# HA
[string]$token = "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiIzODllZTk2MjcxY2E0ODhhOTc3OWE5ZjFhZDVjNTM0OCIsImlhdCI6MTY2MzkyOTUzOSwiZXhwIjoxOTc5Mjg5NTM5fQ.HWjvRYBx_xNFWT5tgdVJxvFsCwJQmECH8ZXvuWl5Js4"
$port = 8123
$ip = '192.168.1.222'
[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12 -bor [Net.SecurityProtocolType]::Tls11 -bor [Net.SecurityProtocolType]::Tls

# Clausius
# Provide encoded credentials (use generateAuthValue.ps1 script)
$encodedCreds = 'Q1QwMDI1QTIzMDg0OnQwb3kyMzVv'
$clausius_uri   = 'http://CT0025A23084.sn.ceo2green.com/http/clausius/'

$basicAuthValue = "Basic $encodedCreds"

$Headers = @{
    Authorization = $basicAuthValue
}

$global:ha_api_headers
$global:ha_api_url

$global:clausius_results = @{}
Function New-HomeAssistantSession
{
    Param(
    [Parameter(Mandatory=$true)][string]$ip,
    [Parameter(Mandatory=$true)][string]$port,
    [Parameter(Mandatory=$true)][string]$token
    )

    $global:ha_api_headers = @{Authorization = "Bearer "+$token}
    $global:ha_api_url = "https://"+"$ip"+":"+"$port"+"/api/"

    Write-Host "Testing connection... " -ForegroundColor Yellow -NoNewline
    try
    {
        $api_connection = (Invoke-WebRequest -uri $ha_api_url -Method GET -Headers $ha_api_headers -SkipCertificateCheck)
        #$global:ha_api_configured = $true
        Write-Host "Connection to Home-Assistant API succeeded! (" ($api_connection).StatusCode ($api_connection).StatusDescription ")" -ForegroundColor Green
    }
    catch
    {
        if ((Test-NetConnection -ComputerName $ip -WarningAction SilentlyContinue).PingSucceeded)
        {
            Write-Host "Connection to Home-Assistant API failed!" -ForegroundColor Red
        }
        else
        {
            Write-Host "Connection failed - ICMP request timed out!" -ForegroundColor Red
        }
        return $_.Exception

        $global:ha_api_url = $null
        $global:ha_api_headers = $null
        $global:ha_api_configured = $false
    }
}

Function Invoke-HomeAssistantService
{
[CmdletBinding()]
    Param(
    [Parameter(Mandatory=$true,Position="0",ParameterSetName="ByEntity")][string]
    [Parameter(Mandatory=$true,Position="0",ParameterSetName="ByJSON")][string]
    $service,

    [Parameter(Mandatory=$true,Position="1",ParameterSetName="ByEntity")][string]
    $entity_id,

    [Parameter(Mandatory=$true,Position="1",ParameterSetName="ByJSON")][string]
    $json
    )

    #-ENTITY_ID
    if ($entity_id)
    {
        $body = ConvertTo-Json @{"entity_id" = "$entity_id"}
    }
    #-JSON
    elseif ($json)
    {
        $body = $json
    }

    Invoke-RestMethod -Method Post -Uri ("$ha_api_url"+"states/"+"$service") -Body ($body) -Header $ha_api_headers -SkipCertificateCheck
    Write-Host $body
}

Function Get-ClausiusData() {
    Param(
        [ValidateSet('temperaturas','status','informacion')]
        [Parameter(Mandatory=$true)]
        [string]$page
    )

    $uri = $clausius_uri + $page + '.html'
    try {
        $content = Invoke-WebRequest -Uri $uri -Headers $Headers
    } catch {
        Write-Host $_.Exception
    }

    if ($content) {
        switch ($page)
        {
            'temperaturas' {

                $lines = $content.Content -split "[\r\n]+"

                # Get outside temperature
                $outTempLines = $lines[60].Split('>').split('<')
                [string]$outTemp = ($outTempLines | Select-String -Pattern '\d+(\.\d+)?' )[1]
                $global:clausius_results['clausius_outsidetemp'] = $outTemp.replace('.',',')

                # Get CWU temperature
                $cwuTempLines = $lines[66].Split('>').split('<')
                [string]$cwuTemp = ($cwuTempLines | Select-String -Pattern '\d+(\.\d+)?')[1]
                $global:clausius_results['clausius_cwu'] = $cwuTemp.Replace(".", ",").Split(" ")[0]

                # Get pomp level
                # Regular expression pattern to match "Level X"
                $pattern = 'Level\s[\d]'
                # Use Select-String to select strings matching the pattern
                $pompLevel = $content.Content  | Select-String -Pattern $pattern  | ForEach-Object { $_.Matches.Value }
                $global:clausius_results['clausius_pomp_level'] = $pompLevel
            }
            'status' {
                #$content = $content.ParsedHtml.body.outerHTML -split([System.Environment]::NewLine)
                #[9] - 0=off; 1=on
                $global:clausius_results['clausius_on_off']    = if ($(($content.InputFields)[2].value)  -match '[1]') {'1'} else {'0'}

                #[13] - 0=winter; 1=summer; 2=automatic
                switch ( ($content.InputFields)[0].value) {
                    '0' { $global:clausius_results['clausius_mode']   = 'Zima' }
                    '1' { $global:clausius_results['clausius_mode']   = 'Lato' }
                    '2' { $global:clausius_results['clausius_mode']   = 'Automatyczny' }
                }

                #Compresor status
                $lines = $content.Content -split "[\r\n]+"
                $compresosrStatus = ( $lines[185].Substring($($lines[185].indexof('data-value-type="'))+17,1))
                if ( $compresosrStatus -eq '5' ) {
                    $global:clausius_results['clausius_compresor_status'] = 'OK'
                }
                elseif ( $compresosrStatus -eq '0' ) {
                    $global:clausius_results['clausius_compresor_status'] = 'CompresorON'
                }
                elseif ( $compresosrStatus -eq '1' ) {
                    $global:clausius_results['clausius_compresor_status'] = 'TurningOff'
                }
                elseif ( $compresosrStatus -eq '2' ) {
                    $global:clausius_results['clausius_compresor_status'] = 'TurningOn'
                }
                elseif ( $compresosrStatus -eq '3' ) {
                    $global:clausius_results['clausius_compresor_status'] = 'Waiting 321'
                }
                elseif ( $compresosrStatus -eq '4' ) {
                    $global:clausius_results['clausius_compresor_status'] = 'STOP'
                } else {
                    $global:clausius_results['clausius_compresor_status'] = 'Problem'
                }

                #Pomp status
                if (($lines[187].Substring($($lines[187].indexof('data-value-type="'))+17,1)) -eq '1' ) {
                    $global:clausius_results['clausius_pomp_status'] = 'OK'
                } else {
                    $global:clausius_results['clausius_pomp_status'] = 'Problem'
                }
            }
            'informacion' {
                #SPF - Seasonal Performance Factor
                $lines = $content.Content -split "[\r\n]+"
                $global:clausius_results['clausius_spf_year']   = $($lines[57].Substring($lines[57].IndexOf('text(')+ 6 ,3 )).replace('.',',')
                $global:clausius_results['clausius_spf_day']  = $($lines[66].Substring($lines[66].IndexOf('text(')+ 6 ,3 )).replace('.',',')
                $global:clausius_results['clausius_spf_month']    = $($lines[48].Substring($lines[48].IndexOf('text(')+ 6 ,3 )).replace('.',',')

                #glycol presure
                $content = $content.ParsedHtml.body.outerHTML -split([System.Environment]::NewLine)
                #$global:clausius_results['clausius_glycol_presure']    = $content[66].Substring($content[66].IndexOf('>') + 1, 3)
                $global:clausius_results['clausius_glycol_presure']    = $lines[318].Substring($lines[318].IndexOf('bar') - 4, 3)

            }
            default {throw "Cannot get Clausius page"}
        }
    }
    #$return_object


}

Function PublicDataToHA($clausius_results) {
    if ($clausius_results) {
        foreach ($row in $clausius_results.GetEnumerator()) {
            $var = 'var.' + $row.key
            $json_to_send = '{"entity_id":"' + $($var) + '","state":' + '"' +  $($row.Value) + '"' + '}'
            Invoke-HomeAssistantService -service $var -json $json_to_send
        }
    }
}

try {
    Get-ClausiusData('temperaturas')
    Get-ClausiusData('status')
    Get-ClausiusData('informacion')
    New-HomeAssistantSession -ip $ip -port $port -token $token
    PublicDataToHA($global:clausius_results)
} catch {
    $_.Exception
}