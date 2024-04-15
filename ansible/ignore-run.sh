ansible-playbook [core 2.16.5]
  config file = /etc/ansible/ansible.cfg
  configured module search path = ['/root/.ansible/plugins/modules', '/usr/share/ansible/plugins/modules']
  ansible python module location = /usr/lib/python3/dist-packages/ansible
  ansible collection location = /root/.ansible/collections:/usr/share/ansible/collections
  executable location = /usr/bin/ansible-playbook
  python version = 3.10.12 (main, Nov 20 2023, 15:14:05) [GCC 11.4.0] (/usr/bin/python3)
  jinja version = 3.0.3
  libyaml = True
Using /etc/ansible/ansible.cfg as config file
host_list declined parsing /mnt/ansible/inventory/inventory.yml as it did not pass its verify_file() method
Parsed /mnt/ansible/inventory/inventory.yml inventory source with yaml plugin
Skipping callback 'default', as we already have a stdout callback.
Skipping callback 'minimal', as we already have a stdout callback.
Skipping callback 'oneline', as we already have a stdout callback.

PLAYBOOK: ansible-install-ha.yaml **********************************************
1 plays in ansible-install-ha.yaml

PLAY [Instal HomeAssistance on Docker] *****************************************

TASK [Gathering Facts] *********************************************************
task path: /mnt/ansible/ansible-install-ha.yaml:2
<192.168.1.201> ESTABLISH SSH CONNECTION FOR USER: piotr
<192.168.1.201> SSH: EXEC sshpass -d12 ssh -C -o ControlMaster=auto -o ControlPersist=60s -o 'User="piotr"' -o ConnectTimeout=10 -o 'ControlPath="/root/.ansible/cp/3baf2ea8c1"' 192.168.1.201 '/bin/sh -c '"'"'echo ~piotr && sleep 0'"'"''
<192.168.1.201> (0, b'/home/piotr\n', b'')
<192.168.1.201> ESTABLISH SSH CONNECTION FOR USER: piotr
<192.168.1.201> SSH: EXEC sshpass -d12 ssh -C -o ControlMaster=auto -o ControlPersist=60s -o 'User="piotr"' -o ConnectTimeout=10 -o 'ControlPath="/root/.ansible/cp/3baf2ea8c1"' 192.168.1.201 '/bin/sh -c '"'"'( umask 77 && mkdir -p "` echo /home/piotr/.ansible/tmp `"&& mkdir "` echo /home/piotr/.ansible/tmp/ansible-tmp-1713213991.8675318-476-13285905905051 `" && echo ansible-tmp-1713213991.8675318-476-13285905905051="` echo /home/piotr/.ansible/tmp/ansible-tmp-1713213991.8675318-476-13285905905051 `" ) && sleep 0'"'"''
<192.168.1.201> (0, b'ansible-tmp-1713213991.8675318-476-13285905905051=/home/piotr/.ansible/tmp/ansible-tmp-1713213991.8675318-476-13285905905051\n', b'')
<192.168.1.201> Attempting python interpreter discovery
<192.168.1.201> ESTABLISH SSH CONNECTION FOR USER: piotr
<192.168.1.201> SSH: EXEC sshpass -d12 ssh -C -o ControlMaster=auto -o ControlPersist=60s -o 'User="piotr"' -o ConnectTimeout=10 -o 'ControlPath="/root/.ansible/cp/3baf2ea8c1"' 192.168.1.201 '/bin/sh -c '"'"'echo PLATFORM; uname; echo FOUND; command -v '"'"'"'"'"'"'"'"'python3.12'"'"'"'"'"'"'"'"'; command -v '"'"'"'"'"'"'"'"'python3.11'"'"'"'"'"'"'"'"'; command -v '"'"'"'"'"'"'"'"'python3.10'"'"'"'"'"'"'"'"'; command -v '"'"'"'"'"'"'"'"'python3.9'"'"'"'"'"'"'"'"'; command -v '"'"'"'"'"'"'"'"'python3.8'"'"'"'"'"'"'"'"'; command -v '"'"'"'"'"'"'"'"'python3.7'"'"'"'"'"'"'"'"'; command -v '"'"'"'"'"'"'"'"'python3.6'"'"'"'"'"'"'"'"'; command -v '"'"'"'"'"'"'"'"'/usr/bin/python3'"'"'"'"'"'"'"'"'; command -v '"'"'"'"'"'"'"'"'/usr/libexec/platform-python'"'"'"'"'"'"'"'"'; command -v '"'"'"'"'"'"'"'"'python2.7'"'"'"'"'"'"'"'"'; command -v '"'"'"'"'"'"'"'"'/usr/bin/python'"'"'"'"'"'"'"'"'; command -v '"'"'"'"'"'"'"'"'python'"'"'"'"'"'"'"'"'; echo ENDFOUND && sleep 0'"'"''
<192.168.1.201> (0, b'PLATFORM\nLinux\nFOUND\n/usr/bin/python3.10\n/usr/bin/python3\nENDFOUND\n', b'')
<192.168.1.201> ESTABLISH SSH CONNECTION FOR USER: piotr
<192.168.1.201> SSH: EXEC sshpass -d12 ssh -C -o ControlMaster=auto -o ControlPersist=60s -o 'User="piotr"' -o ConnectTimeout=10 -o 'ControlPath="/root/.ansible/cp/3baf2ea8c1"' 192.168.1.201 '/bin/sh -c '"'"'/usr/bin/python3.10 && sleep 0'"'"''
<192.168.1.201> (0, b'{"platform_dist_result": [], "osrelease_content": "PRETTY_NAME=\\"Ubuntu 22.04.4 LTS\\"\\nNAME=\\"Ubuntu\\"\\nVERSION_ID=\\"22.04\\"\\nVERSION=\\"22.04.4 LTS (Jammy Jellyfish)\\"\\nVERSION_CODENAME=jammy\\nID=ubuntu\\nID_LIKE=debian\\nHOME_URL=\\"https://www.ubuntu.com/\\"\\nSUPPORT_URL=\\"https://help.ubuntu.com/\\"\\nBUG_REPORT_URL=\\"https://bugs.launchpad.net/ubuntu/\\"\\nPRIVACY_POLICY_URL=\\"https://www.ubuntu.com/legal/terms-and-policies/privacy-policy\\"\\nUBUNTU_CODENAME=jammy\\n"}\n', b'')
Using module file /usr/lib/python3/dist-packages/ansible/modules/setup.py
<192.168.1.201> PUT /root/.ansible/tmp/ansible-local-472ilie3vcr/tmpdh0w16ul TO /home/piotr/.ansible/tmp/ansible-tmp-1713213991.8675318-476-13285905905051/AnsiballZ_setup.py
<192.168.1.201> SSH: EXEC sshpass -d12 sftp -o BatchMode=no -b - -C -o ControlMaster=auto -o ControlPersist=60s -o 'User="piotr"' -o ConnectTimeout=10 -o 'ControlPath="/root/.ansible/cp/3baf2ea8c1"' '[192.168.1.201]'
<192.168.1.201> (0, b'sftp> put /root/.ansible/tmp/ansible-local-472ilie3vcr/tmpdh0w16ul /home/piotr/.ansible/tmp/ansible-tmp-1713213991.8675318-476-13285905905051/AnsiballZ_setup.py\n', b'')
<192.168.1.201> ESTABLISH SSH CONNECTION FOR USER: piotr
<192.168.1.201> SSH: EXEC sshpass -d12 ssh -C -o ControlMaster=auto -o ControlPersist=60s -o 'User="piotr"' -o ConnectTimeout=10 -o 'ControlPath="/root/.ansible/cp/3baf2ea8c1"' 192.168.1.201 '/bin/sh -c '"'"'chmod u+x /home/piotr/.ansible/tmp/ansible-tmp-1713213991.8675318-476-13285905905051/ /home/piotr/.ansible/tmp/ansible-tmp-1713213991.8675318-476-13285905905051/AnsiballZ_setup.py && sleep 0'"'"''
<192.168.1.201> (0, b'', b'')
<192.168.1.201> ESTABLISH SSH CONNECTION FOR USER: piotr
<192.168.1.201> SSH: EXEC sshpass -d12 ssh -C -o ControlMaster=auto -o ControlPersist=60s -o 'User="piotr"' -o ConnectTimeout=10 -o 'ControlPath="/root/.ansible/cp/3baf2ea8c1"' -tt 192.168.1.201 '/bin/sh -c '"'"'sudo -H -S -p "[sudo via ansible, key=ibulczeyutpfedqaxslnywoypvmyttmh] password:" -u root /bin/sh -c '"'"'"'"'"'"'"'"'echo BECOME-SUCCESS-ibulczeyutpfedqaxslnywoypvmyttmh ; /usr/bin/python3 /home/piotr/.ansible/tmp/ansible-tmp-1713213991.8675318-476-13285905905051/AnsiballZ_setup.py'"'"'"'"'"'"'"'"' && sleep 0'"'"''
Escalation succeeded
<192.168.1.201> (0, b'\r\n\r\n\r\n{"ansible_facts": {"ansible_ssh_host_key_dsa_public": "AAAAB3NzaC1kc3MAAACBAMI5pP7ngWgfkpZcCcRi3p7/LSNIlhdbbXWFQ9g3TtcFjCc0xRyY1xMFJ3igViBOaIAiziJJYAuE+DpA95mTqoJUQCmokU/fB/hZpQF09mlhZV4V2qGdZhlrLfMa6gbM5yRjNQJxf1pKJOYAgBmf8mwgtwUmcwW7Vfodd6nCA70PAAAAFQD6l6hrZl1JQ63CfiQ0jaX/jjp8LQAAAIA/WXbZekyF2AC6YGwh4Exf1aCtWIF8U4/T0bjxnrXyg7pz9UEdkAIcvAHrhktOoLm1nk78F924Q0irxAG+7uzqhbiIHSIUFO9ePiricsizNUbaZILpBJMxTSzuonJqzEpkORqVR5sGZ/WoUxBknVe50S/3tJ/kZZTz3Jwc/crsnwAAAIEAurB3+5/FTWwcrsbAXV6jjLGQzFYV2jdBDlEou+rikFQ1hreuV2wvFOPw6oDaFdABc3W8Y9GV6E8+BOmRovEd1NuNwGcjPoqfGdpEnIL0K4RC6iY5BtGyT1MlEAomAQZW3uDQBCEwumYqvLUAnl2M6nj6Llj+lZYQPmoeYoB/v8Y=", "ansible_ssh_host_key_dsa_public_keytype": "ssh-dss", "ansible_ssh_host_key_rsa_public": "AAAAB3NzaC1yc2EAAAADAQABAAABgQDxlPz3FIxHNEf5IbSdr1FR+keOcDW2NGcfl7twH4HW+xMEBX5iYRNTfOOBD6dk3S6RaGPA/3LJa9i8uVbcL97FggK66BY0mnHn8/Vr65PmpnkTiX9vhy8+157sUxnZE2uhBiyT+bjncNNceGbPMTg1E8fDxXr/lFxmapB0XoJh0bspmXIPRIRsvduvRyZ31Ur+IYoXQP5JaS1VrD2q6v7IWOHL2BU2XQAjTT+Jytb0gEulggurdoe9gUvVPRFaI9YpQ3zTHXmnhlSIgpEmV4/TP0EN4KsgFeKXtLobuRBUWoAwDzNUq/ieioKy8fA6Fie4fV/vZIMnGqrDw/GH7K8M2TL6f6Xl4HCkMdwqmxpUwFrkz/v0KSX/pAmcwJ6PY3AAjioirFIQLWjha2l2zrZzUh4D8ybrReXw/X2wdx4drq9+H8+tGB+6suDv7qUKxwK9rsOLbvAIYmqB+hgKchAMXRcHTTdL8l5KxDNypDyLUGrRMTINmRLBV9ItSE8hRC0=", "ansible_ssh_host_key_rsa_public_keytype": "ssh-rsa", "ansible_ssh_host_key_ecdsa_public": "AAAAE2VjZHNhLXNoYTItbmlzdHAyNTYAAAAIbmlzdHAyNTYAAABBBMktZk0sMb/fAFM9Hr6YX5LLxjOvlsX7MhJyQ/2z0SbpZmB1z4vBdLhoUAsHxHH4Q900ArY8pjCLK7rvVwWwyXg=", "ansible_ssh_host_key_ecdsa_public_keytype": "ecdsa-sha2-nistp256", "ansible_ssh_host_key_ed25519_public": "AAAAC3NzaC1lZDI1NTE5AAAAIPxKnalT/HyhaPScUVchDaJv3KWPwei59CEfPmJQzZVr", "ansible_ssh_host_key_ed25519_public_keytype": "ssh-ed25519", "ansible_system": "Linux", "ansible_kernel": "5.15.0-102-generic", "ansible_kernel_version": "#112-Ubuntu SMP Tue Mar 5 16:50:32 UTC 2024", "ansible_machine": "x86_64", "ansible_python_version": "3.10.12", "ansible_fqdn": "lsrv-01", "ansible_hostname": "lsrv-01", "ansible_nodename": "lsrv-01", "ansible_domain": "", "ansible_userspace_bits": "64", "ansible_architecture": "x86_64", "ansible_userspace_architecture": "x86_64", "ansible_machine_id": "9c26650976684a6db3baa34d570f3b2c", "ansible_virtualization_role": "guest", "ansible_virtualization_type": "VMware", "ansible_virtualization_tech_guest": ["VMware"], "ansible_virtualization_tech_host": ["kvm"], "ansible_distribution": "Ubuntu", "ansible_distribution_release": "jammy", "ansible_distribution_version": "22.04", "ansible_distribution_major_version": "22", "ansible_distribution_file_path": "/etc/os-release", "ansible_distribution_file_variety": "Debian", "ansible_distribution_file_parsed": true, "ansible_os_family": "Debian", "ansible_local": {}, "ansible_env": {"SUDO_GID": "1000", "MAIL": "/var/mail/root", "USER": "root", "HOME": "/root", "LC_CTYPE": "C.UTF-8", "SUDO_UID": "1000", "LOGNAME": "root", "TERM": "xterm", "PATH": "/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/snap/bin", "LANG": "en_US.UTF-8", "SUDO_COMMAND": "/bin/sh -c echo BECOME-SUCCESS-ibulczeyutpfedqaxslnywoypvmyttmh ; /usr/bin/python3 /home/piotr/.ansible/tmp/ansible-tmp-1713213991.8675318-476-13285905905051/AnsiballZ_setup.py", "SHELL": "/bin/bash", "SUDO_USER": "piotr", "PWD": "/home/piotr"}, "ansible_user_id": "root", "ansible_user_uid": 0, "ansible_user_gid": 0, "ansible_user_gecos": "root", "ansible_user_dir": "/root", "ansible_user_shell": "/bin/bash", "ansible_real_user_id": 0, "ansible_effective_user_id": 0, "ansible_real_group_id": 0, "ansible_effective_group_id": 0, "ansible_fibre_channel_wwn": [], "ansible_processor": ["0", "GenuineIntel", "Intel(R) Core(TM) i5-6400 CPU @ 2.70GHz", "1", "GenuineIntel", "Intel(R) Core(TM) i5-6400 CPU @ 2.70GHz"], "ansible_processor_count": 2, "ansible_processor_cores": 1, "ansible_processor_threads_per_core": 1, "ansible_processor_vcpus": 2, "ansible_processor_nproc": 2, "ansible_memtotal_mb": 3911, "ansible_memfree_mb": 229, "ansible_swaptotal_mb": 2169, "ansible_swapfree_mb": 2169, "ansible_memory_mb": {"real": {"total": 3911, "used": 3682, "free": 229}, "nocache": {"free": 3172, "used": 739}, "swap": {"total": 2169, "free": 2169, "used": 0, "cached": 0}}, "ansible_bios_date": "11/12/2020", "ansible_bios_vendor": "Phoenix Technologies LTD", "ansible_bios_version": "6.00", "ansible_board_asset_tag": "NA", "ansible_board_name": "440BX Desktop Reference Platform", "ansible_board_serial": "None", "ansible_board_vendor": "Intel Corporation", "ansible_board_version": "None", "ansible_chassis_asset_tag": "No Asset Tag", "ansible_chassis_serial": "None", "ansible_chassis_vendor": "No Enclosure", "ansible_chassis_version": "N/A", "ansible_form_factor": "Other", "ansible_product_name": "VMware Virtual Platform", "ansible_product_serial": "VMware-56 4d f9 ba 1f e7 5d e7-ce 49 06 ab ef 2f b1 8f", "ansible_product_uuid": "baf94d56-e71f-e75d-ce49-06abef2fb18f", "ansible_product_version": "None", "ansible_system_vendor": "VMware, Inc.", "ansible_devices": {"loop1": {"virtual": 1, "links": {"ids": [], "uuids": [], "labels": [], "masters": []}, "vendor": null, "model": null, "sas_address": null, "sas_device_handle": null, "removable": "0", "support_discard": "4096", "partitions": {}, "rotational": "0", "scheduler_mode": "none", "sectors": "178152", "sectorsize": "512", "size": "86.99 MB", "host": "", "holders": []}, "loop6": {"virtual": 1, "links": {"ids": [], "uuids": [], "labels": [], "masters": []}, "vendor": null, "model": null, "sas_address": null, "sas_device_handle": null, "removable": "0", "support_discard": "0", "partitions": {}, "rotational": "1", "scheduler_mode": "none", "sectors": "0", "sectorsize": "512", "size": "0.00 Bytes", "host": "", "holders": []}, "loop4": {"virtual": 1, "links": {"ids": [], "uuids": [], "labels": [], "masters": []}, "vendor": null, "model": null, "sas_address": null, "sas_device_handle": null, "removable": "0", "support_discard": "4096", "partitions": {}, "rotational": "0", "scheduler_mode": "none", "sectors": "80072", "sectorsize": "512", "size": "39.10 MB", "host": "", "holders": []}, "sr0": {"virtual": 1, "links": {"ids": ["ata-VMware_Virtual_SATA_CDRW_Drive_00000000000000000001"], "uuids": ["2024-02-16-23-52-30-00"], "labels": ["Ubuntu-Server\\\\x2022.04.4\\\\x20LTS\\\\x20amd64"], "masters": []}, "vendor": "NECVMWar", "model": "VMware SATA CD00", "sas_address": null, "sas_device_handle": null, "removable": "1", "support_discard": "0", "partitions": {}, "rotational": "1", "scheduler_mode": "mq-deadline", "sectors": "4110172", "sectorsize": "2048", "size": "1.96 GB", "host": "SATA controller: VMware SATA AHCI controller", "holders": []}, "loop2": {"virtual": 1, "links": {"ids": [], "uuids": [], "labels": [], "masters": []}, "vendor": null, "model": null, "sas_address": null, "sas_device_handle": null, "removable": "0", "support_discard": "4096", "partitions": {}, "rotational": "0", "scheduler_mode": "none", "sectors": "82800", "sectorsize": "512", "size": "40.43 MB", "host": "", "holders": []}, "loop0": {"virtual": 1, "links": {"ids": [], "uuids": [], "labels": [], "masters": []}, "vendor": null, "model": null, "sas_address": null, "sas_device_handle": null, "removable": "0", "support_discard": "4096", "partitions": {}, "rotational": "0", "scheduler_mode": "none", "sectors": "130888", "sectorsize": "512", "size": "63.91 MB", "host": "", "holders": []}, "dm-0": {"virtual": 1, "links": {"ids": ["dm-name-ubuntu--vg-ubuntu--lv", "dm-uuid-LVM-ZCLdg2zZVlHOMgnAf3BGgvFfPbDzre5cHFEmwPs3vQ4NcLCQTJ0IVYFKvJA1ZRZY"], "uuids": ["29882e1b-9802-4f04-accf-f217ee25cc60"], "labels": [], "masters": []}, "vendor": null, "model": null, "sas_address": null, "sas_device_handle": null, "removable": "0", "support_discard": "1048576", "partitions": {}, "rotational": "0", "scheduler_mode": "", "sectors": "24109056", "sectorsize": "512", "size": "11.50 GB", "host": "", "holders": []}, "loop7": {"virtual": 1, "links": {"ids": [], "uuids": [], "labels": [], "masters": []}, "vendor": null, "model": null, "sas_address": null, "sas_device_handle": null, "removable": "0", "support_discard": "0", "partitions": {}, "rotational": "1", "scheduler_mode": "none", "sectors": "0", "sectorsize": "512", "size": "0.00 Bytes", "host": "", "holders": []}, "sda": {"virtual": 1, "links": {"ids": [], "uuids": [], "labels": [], "masters": []}, "vendor": "VMware", "model": "Virtual disk", "sas_address": null, "sas_device_handle": null, "removable": "0", "support_discard": "1048576", "partitions": {"sda2": {"links": {"ids": [], "uuids": ["34c5ebd1-19f9-40d7-ae52-eae8bf76ef7f"], "labels": [], "masters": []}, "start": "4096", "sectors": "4194304", "sectorsize": 512, "size": "2.00 GB", "uuid": "34c5ebd1-19f9-40d7-ae52-eae8bf76ef7f", "holders": []}, "sda3": {"links": {"ids": ["lvm-pv-uuid-MA2pHA-B5eR-rr4a-fwHM-nixH-SyFE-WSeuNp"], "uuids": [], "labels": [], "masters": ["dm-0"]}, "start": "4198400", "sectors": "48228352", "sectorsize": 512, "size": "23.00 GB", "uuid": null, "holders": ["ubuntu--vg-ubuntu--lv"]}, "sda1": {"links": {"ids": [], "uuids": [], "labels": [], "masters": []}, "start": "2048", "sectors": "2048", "sectorsize": 512, "size": "1.00 MB", "uuid": null, "holders": []}}, "rotational": "0", "scheduler_mode": "mq-deadline", "sectors": "52428800", "sectorsize": "512", "size": "25.00 GB", "host": "Serial Attached SCSI controller: VMware PVSCSI SCSI Controller (rev 02)", "holders": []}, "loop5": {"virtual": 1, "links": {"ids": [], "uuids": [], "labels": [], "masters": []}, "vendor": null, "model": null, "sas_address": null, "sas_device_handle": null, "removable": "0", "support_discard": "4096", "partitions": {}, "rotational": "0", "scheduler_mode": "none", "sectors": "178216", "sectorsize": "512", "size": "87.02 MB", "host": "", "holders": []}, "loop3": {"virtual": 1, "links": {"ids": [], "uuids": [], "labels": [], "masters": []}, "vendor": null, "model": null, "sas_address": null, "sas_device_handle": null, "removable": "0", "support_discard": "4096", "partitions": {}, "rotational": "0", "scheduler_mode": "none", "sectors": "130960", "sectorsize": "512", "size": "63.95 MB", "host": "", "holders": []}}, "ansible_device_links": {"ids": {"dm-0": ["dm-name-ubuntu--vg-ubuntu--lv", "dm-uuid-LVM-ZCLdg2zZVlHOMgnAf3BGgvFfPbDzre5cHFEmwPs3vQ4NcLCQTJ0IVYFKvJA1ZRZY"], "sr0": ["ata-VMware_Virtual_SATA_CDRW_Drive_00000000000000000001"], "sda3": ["lvm-pv-uuid-MA2pHA-B5eR-rr4a-fwHM-nixH-SyFE-WSeuNp"]}, "uuids": {"dm-0": ["29882e1b-9802-4f04-accf-f217ee25cc60"], "sda2": ["34c5ebd1-19f9-40d7-ae52-eae8bf76ef7f"], "sr0": ["2024-02-16-23-52-30-00"]}, "labels": {"sr0": ["Ubuntu-Server\\\\x2022.04.4\\\\x20LTS\\\\x20amd64"]}, "masters": {"sda3": ["dm-0"]}}, "ansible_uptime_seconds": 213708, "ansible_lvm": {"lvs": {"ubuntu-lv": {"size_g": "11.50", "vg": "ubuntu-vg"}}, "vgs": {"ubuntu-vg": {"size_g": "23.00", "free_g": "11.50", "num_lvs": "1", "num_pvs": "1"}}, "pvs": {"/dev/sda3": {"size_g": "23.00", "free_g": "11.50", "vg": "ubuntu-vg"}}}, "ansible_mounts": [{"mount": "/", "device": "/dev/mapper/ubuntu--vg-ubuntu--lv", "fstype": "ext4", "options": "rw,relatime", "size_total": 12040970240, "size_available": 2768527360, "block_size": 4096, "block_total": 2939690, "block_available": 675910, "block_used": 2263780, "inode_total": 753664, "inode_available": 508827, "inode_used": 244837, "uuid": "29882e1b-9802-4f04-accf-f217ee25cc60"}, {"mount": "/snap/core20/2105", "device": "/dev/loop0", "fstype": "squashfs", "options": "ro,nodev,relatime,errors=continue", "size_total": 67108864, "size_available": 0, "block_size": 131072, "block_total": 512, "block_available": 0, "block_used": 512, "inode_total": 12041, "inode_available": 0, "inode_used": 12041, "uuid": "N/A"}, {"mount": "/snap/lxd/27037", "device": "/dev/loop1", "fstype": "squashfs", "options": "ro,nodev,relatime,errors=continue", "size_total": 91226112, "size_available": 0, "block_size": 131072, "block_total": 696, "block_available": 0, "block_used": 696, "inode_total": 959, "inode_available": 0, "inode_used": 959, "uuid": "N/A"}, {"mount": "/snap/snapd/20671", "device": "/dev/loop2", "fstype": "squashfs", "options": "ro,nodev,relatime,errors=continue", "size_total": 42467328, "size_available": 0, "block_size": 131072, "block_total": 324, "block_available": 0, "block_used": 324, "inode_total": 658, "inode_available": 0, "inode_used": 658, "uuid": "N/A"}, {"mount": "/boot", "device": "/dev/sda2", "fstype": "ext4", "options": "rw,relatime", "size_total": 2040373248, "size_available": 1780826112, "block_size": 4096, "block_total": 498138, "block_available": 434772, "block_used": 63366, "inode_total": 131072, "inode_available": 130756, "inode_used": 316, "uuid": "34c5ebd1-19f9-40d7-ae52-eae8bf76ef7f"}, {"mount": "/snap/core20/2264", "device": "/dev/loop3", "fstype": "squashfs", "options": "ro,nodev,relatime,errors=continue", "size_total": 67108864, "size_available": 0, "block_size": 131072, "block_total": 512, "block_available": 0, "block_used": 512, "inode_total": 12055, "inode_available": 0, "inode_used": 12055, "uuid": "N/A"}, {"mount": "/snap/snapd/21184", "device": "/dev/loop4", "fstype": "squashfs", "options": "ro,nodev,relatime,errors=continue", "size_total": 41025536, "size_available": 0, "block_size": 131072, "block_total": 313, "block_available": 0, "block_used": 313, "inode_total": 651, "inode_available": 0, "inode_used": 651, "uuid": "N/A"}, {"mount": "/snap/lxd/27948", "device": "/dev/loop5", "fstype": "squashfs", "options": "ro,nodev,relatime,errors=continue", "size_total": 91357184, "size_available": 0, "block_size": 131072, "block_total": 697, "block_available": 0, "block_used": 697, "inode_total": 959, "inode_available": 0, "inode_used": 959, "uuid": "N/A"}], "ansible_system_capabilities_enforced": "False", "ansible_system_capabilities": [], "ansible_selinux_python_present": true, "ansible_selinux": {"status": "disabled"}, "ansible_is_chroot": false, "ansible_interfaces": ["docker0", "ens192", "lo"], "ansible_lo": {"device": "lo", "mtu": 65536, "active": true, "type": "loopback", "promisc": false, "ipv4": {"address": "127.0.0.1", "broadcast": "", "netmask": "255.0.0.0", "network": "127.0.0.0", "prefix": "8"}, "ipv6": [{"address": "::1", "prefix": "128", "scope": "host"}], "features": {"rx_checksumming": "on [fixed]", "tx_checksumming": "on", "tx_checksum_ipv4": "off [fixed]", "tx_checksum_ip_generic": "on [fixed]", "tx_checksum_ipv6": "off [fixed]", "tx_checksum_fcoe_crc": "off [fixed]", "tx_checksum_sctp": "on [fixed]", "scatter_gather": "on", "tx_scatter_gather": "on [fixed]", "tx_scatter_gather_fraglist": "on [fixed]", "tcp_segmentation_offload": "on", "tx_tcp_segmentation": "on", "tx_tcp_ecn_segmentation": "on", "tx_tcp_mangleid_segmentation": "on", "tx_tcp6_segmentation": "on", "generic_segmentation_offload": "on", "generic_receive_offload": "on", "large_receive_offload": "off [fixed]", "rx_vlan_offload": "off [fixed]", "tx_vlan_offload": "off [fixed]", "ntuple_filters": "off [fixed]", "receive_hashing": "off [fixed]", "highdma": "on [fixed]", "rx_vlan_filter": "off [fixed]", "vlan_challenged": "on [fixed]", "tx_lockless": "on [fixed]", "netns_local": "on [fixed]", "tx_gso_robust": "off [fixed]", "tx_fcoe_segmentation": "off [fixed]", "tx_gre_segmentation": "off [fixed]", "tx_gre_csum_segmentation": "off [fixed]", "tx_ipxip4_segmentation": "off [fixed]", "tx_ipxip6_segmentation": "off [fixed]", "tx_udp_tnl_segmentation": "off [fixed]", "tx_udp_tnl_csum_segmentation": "off [fixed]", "tx_gso_partial": "off [fixed]", "tx_tunnel_remcsum_segmentation": "off [fixed]", "tx_sctp_segmentation": "on", "tx_esp_segmentation": "off [fixed]", "tx_udp_segmentation": "on", "tx_gso_list": "on", "fcoe_mtu": "off [fixed]", "tx_nocache_copy": "off [fixed]", "loopback": "on [fixed]", "rx_fcs": "off [fixed]", "rx_all": "off [fixed]", "tx_vlan_stag_hw_insert": "off [fixed]", "rx_vlan_stag_hw_parse": "off [fixed]", "rx_vlan_stag_filter": "off [fixed]", "l2_fwd_offload": "off [fixed]", "hw_tc_offload": "off [fixed]", "esp_hw_offload": "off [fixed]", "esp_tx_csum_hw_offload": "off [fixed]", "rx_udp_tunnel_port_offload": "off [fixed]", "tls_hw_tx_offload": "off [fixed]", "tls_hw_rx_offload": "off [fixed]", "rx_gro_hw": "off [fixed]", "tls_hw_record": "off [fixed]", "rx_gro_list": "off", "macsec_hw_offload": "off [fixed]", "rx_udp_gro_forwarding": "off", "hsr_tag_ins_offload": "off [fixed]", "hsr_tag_rm_offload": "off [fixed]", "hsr_fwd_offload": "off [fixed]", "hsr_dup_offload": "off [fixed]"}, "timestamping": [], "hw_timestamp_filters": []}, "ansible_ens192": {"device": "ens192", "macaddress": "00:0c:29:2f:b1:8f", "mtu": 1500, "active": true, "module": "vmxnet3", "type": "ether", "pciid": "0000:0b:00.0", "speed": 10000, "promisc": false, "ipv4": {"address": "192.168.1.201", "broadcast": "192.168.1.255", "netmask": "255.255.255.0", "network": "192.168.1.0", "prefix": "24"}, "ipv6": [{"address": "fe80::20c:29ff:fe2f:b18f", "prefix": "64", "scope": "link"}], "features": {"rx_checksumming": "on", "tx_checksumming": "on", "tx_checksum_ipv4": "off [fixed]", "tx_checksum_ip_generic": "on", "tx_checksum_ipv6": "off [fixed]", "tx_checksum_fcoe_crc": "off [fixed]", "tx_checksum_sctp": "off [fixed]", "scatter_gather": "on", "tx_scatter_gather": "on", "tx_scatter_gather_fraglist": "off [fixed]", "tcp_segmentation_offload": "on", "tx_tcp_segmentation": "on", "tx_tcp_ecn_segmentation": "off [fixed]", "tx_tcp_mangleid_segmentation": "off", "tx_tcp6_segmentation": "on", "generic_segmentation_offload": "on", "generic_receive_offload": "on", "large_receive_offload": "off", "rx_vlan_offload": "on", "tx_vlan_offload": "on", "ntuple_filters": "off [fixed]", "receive_hashing": "on", "highdma": "on", "rx_vlan_filter": "on [fixed]", "vlan_challenged": "off [fixed]", "tx_lockless": "off [fixed]", "netns_local": "off [fixed]", "tx_gso_robust": "off [fixed]", "tx_fcoe_segmentation": "off [fixed]", "tx_gre_segmentation": "off [fixed]", "tx_gre_csum_segmentation": "off [fixed]", "tx_ipxip4_segmentation": "off [fixed]", "tx_ipxip6_segmentation": "off [fixed]", "tx_udp_tnl_segmentation": "on", "tx_udp_tnl_csum_segmentation": "on", "tx_gso_partial": "off [fixed]", "tx_tunnel_remcsum_segmentation": "off [fixed]", "tx_sctp_segmentation": "off [fixed]", "tx_esp_segmentation": "off [fixed]", "tx_udp_segmentation": "off [fixed]", "tx_gso_list": "off [fixed]", "fcoe_mtu": "off [fixed]", "tx_nocache_copy": "off", "loopback": "off [fixed]", "rx_fcs": "off [fixed]", "rx_all": "off [fixed]", "tx_vlan_stag_hw_insert": "off [fixed]", "rx_vlan_stag_hw_parse": "off [fixed]", "rx_vlan_stag_filter": "off [fixed]", "l2_fwd_offload": "off [fixed]", "hw_tc_offload": "off [fixed]", "esp_hw_offload": "off [fixed]", "esp_tx_csum_hw_offload": "off [fixed]", "rx_udp_tunnel_port_offload": "off [fixed]", "tls_hw_tx_offload": "off [fixed]", "tls_hw_rx_offload": "off [fixed]", "rx_gro_hw": "off [fixed]", "tls_hw_record": "off [fixed]", "rx_gro_list": "off", "macsec_hw_offload": "off [fixed]", "rx_udp_gro_forwarding": "off", "hsr_tag_ins_offload": "off [fixed]", "hsr_tag_rm_offload": "off [fixed]", "hsr_fwd_offload": "off [fixed]", "hsr_dup_offload": "off [fixed]"}, "timestamping": [], "hw_timestamp_filters": []}, "ansible_docker0": {"device": "docker0", "macaddress": "02:42:cc:12:e9:e4", "mtu": 1500, "active": false, "type": "bridge", "interfaces": [], "id": "8000.0242cc12e9e4", "stp": false, "speed": -1, "promisc": false, "ipv4": {"address": "172.17.0.1", "broadcast": "172.17.255.255", "netmask": "255.255.0.0", "network": "172.17.0.0", "prefix": "16"}, "features": {"rx_checksumming": "off [fixed]", "tx_checksumming": "on", "tx_checksum_ipv4": "off [fixed]", "tx_checksum_ip_generic": "on", "tx_checksum_ipv6": "off [fixed]", "tx_checksum_fcoe_crc": "off [fixed]", "tx_checksum_sctp": "off [fixed]", "scatter_gather": "on", "tx_scatter_gather": "on", "tx_scatter_gather_fraglist": "on", "tcp_segmentation_offload": "on", "tx_tcp_segmentation": "on", "tx_tcp_ecn_segmentation": "on", "tx_tcp_mangleid_segmentation": "on", "tx_tcp6_segmentation": "on", "generic_segmentation_offload": "on", "generic_receive_offload": "on", "large_receive_offload": "off [fixed]", "rx_vlan_offload": "off [fixed]", "tx_vlan_offload": "on", "ntuple_filters": "off [fixed]", "receive_hashing": "off [fixed]", "highdma": "on", "rx_vlan_filter": "off [fixed]", "vlan_challenged": "off [fixed]", "tx_lockless": "on [fixed]", "netns_local": "on [fixed]", "tx_gso_robust": "on", "tx_fcoe_segmentation": "on", "tx_gre_segmentation": "on", "tx_gre_csum_segmentation": "on", "tx_ipxip4_segmentation": "on", "tx_ipxip6_segmentation": "on", "tx_udp_tnl_segmentation": "on", "tx_udp_tnl_csum_segmentation": "on", "tx_gso_partial": "on", "tx_tunnel_remcsum_segmentation": "on", "tx_sctp_segmentation": "on", "tx_esp_segmentation": "on", "tx_udp_segmentation": "on", "tx_gso_list": "on", "fcoe_mtu": "off [fixed]", "tx_nocache_copy": "off", "loopback": "off [fixed]", "rx_fcs": "off [fixed]", "rx_all": "off [fixed]", "tx_vlan_stag_hw_insert": "on", "rx_vlan_stag_hw_parse": "off [fixed]", "rx_vlan_stag_filter": "off [fixed]", "l2_fwd_offload": "off [fixed]", "hw_tc_offload": "off [fixed]", "esp_hw_offload": "off [fixed]", "esp_tx_csum_hw_offload": "off [fixed]", "rx_udp_tunnel_port_offload": "off [fixed]", "tls_hw_tx_offload": "off [fixed]", "tls_hw_rx_offload": "off [fixed]", "rx_gro_hw": "off [fixed]", "tls_hw_record": "off [fixed]", "rx_gro_list": "off", "macsec_hw_offload": "off [fixed]", "rx_udp_gro_forwarding": "off", "hsr_tag_ins_offload": "off [fixed]", "hsr_tag_rm_offload": "off [fixed]", "hsr_fwd_offload": "off [fixed]", "hsr_dup_offload": "off [fixed]"}, "timestamping": [], "hw_timestamp_filters": []}, "ansible_default_ipv4": {"gateway": "192.168.1.1", "interface": "ens192", "address": "192.168.1.201", "broadcast": "192.168.1.255", "netmask": "255.255.255.0", "network": "192.168.1.0", "prefix": "24", "macaddress": "00:0c:29:2f:b1:8f", "mtu": 1500, "type": "ether", "alias": "ens192"}, "ansible_default_ipv6": {"gateway": "fe80::c605:28ff:fe07:dd25", "interface": "ens192", "address": "fe80::20c:29ff:fe2f:b18f", "prefix": "64", "scope": "link", "macaddress": "00:0c:29:2f:b1:8f", "mtu": 1500, "type": "ether"}, "ansible_all_ipv4_addresses": ["192.168.1.201", "172.17.0.1"], "ansible_all_ipv6_addresses": ["fe80::20c:29ff:fe2f:b18f"], "ansible_locally_reachable_ips": {"ipv4": ["127.0.0.0/8", "127.0.0.1", "172.17.0.1", "192.168.1.201"], "ipv6": ["::1", "fe80::20c:29ff:fe2f:b18f"]}, "ansible_iscsi_iqn": "iqn.2004-10.com.ubuntu:01:c6b852bc3730", "ansible_hostnqn": "", "ansible_loadavg": {"1m": 0.072265625, "5m": 0.08349609375, "15m": 0.03173828125}, "ansible_service_mgr": "systemd", "ansible_dns": {"nameservers": ["127.0.0.53"], "options": {"edns0": true, "trust-ad": true}, "search": ["1.1.1.1"]}, "ansible_python": {"version": {"major": 3, "minor": 10, "micro": 12, "releaselevel": "final", "serial": 0}, "version_info": [3, 10, 12, "final", 0], "executable": "/usr/bin/python3", "has_sslcontext": true, "type": "cpython"}, "ansible_lsb": {"id": "Ubuntu", "description": "Ubuntu 22.04.4 LTS", "release": "22.04", "codename": "jammy", "major_release": "22"}, "ansible_date_time": {"year": "2024", "month": "04", "weekday": "Monday", "weekday_number": "1", "weeknumber": "16", "day": "15", "hour": "20", "minute": "46", "second": "34", "epoch": "1713213994", "epoch_int": "1713213994", "date": "2024-04-15", "time": "20:46:34", "iso8601_micro": "2024-04-15T20:46:34.585949Z", "iso8601": "2024-04-15T20:46:34Z", "iso8601_basic": "20240415T204634585949", "iso8601_basic_short": "20240415T204634", "tz": "UTC", "tz_dst": "UTC", "tz_offset": "+0000"}, "ansible_pkg_mgr": "apt", "ansible_apparmor": {"status": "enabled"}, "ansible_fips": false, "ansible_cmdline": {"BOOT_IMAGE": "/vmlinuz-5.15.0-102-generic", "root": "/dev/mapper/ubuntu--vg-ubuntu--lv", "ro": true}, "ansible_proc_cmdline": {"BOOT_IMAGE": "/vmlinuz-5.15.0-102-generic", "root": "/dev/mapper/ubuntu--vg-ubuntu--lv", "ro": true}, "gather_subset": ["all"], "module_setup": true}, "invocation": {"module_args": {"gather_subset": ["all"], "gather_timeout": 10, "filter": [], "fact_path": "/etc/ansible/facts.d"}}}\r\n', b'Shared connection to 192.168.1.201 closed.\r\n')
<192.168.1.201> ESTABLISH SSH CONNECTION FOR USER: piotr
<192.168.1.201> SSH: EXEC sshpass -d12 ssh -C -o ControlMaster=auto -o ControlPersist=60s -o 'User="piotr"' -o ConnectTimeout=10 -o 'ControlPath="/root/.ansible/cp/3baf2ea8c1"' 192.168.1.201 '/bin/sh -c '"'"'rm -f -r /home/piotr/.ansible/tmp/ansible-tmp-1713213991.8675318-476-13285905905051/ > /dev/null 2>&1 && sleep 0'"'"''
<192.168.1.201> (0, b'', b'')
ok: [192.168.1.201]

TASK [CGet hostname] ***********************************************************
task path: /mnt/ansible/ansible-install-ha.yaml:7
<192.168.1.201> ESTABLISH SSH CONNECTION FOR USER: piotr
<192.168.1.201> SSH: EXEC sshpass -d12 ssh -C -o ControlMaster=auto -o ControlPersist=60s -o 'User="piotr"' -o ConnectTimeout=10 -o 'ControlPath="/root/.ansible/cp/3baf2ea8c1"' 192.168.1.201 '/bin/sh -c '"'"'echo ~piotr && sleep 0'"'"''
<192.168.1.201> (0, b'/home/piotr\n', b'')
<192.168.1.201> ESTABLISH SSH CONNECTION FOR USER: piotr
<192.168.1.201> SSH: EXEC sshpass -d12 ssh -C -o ControlMaster=auto -o ControlPersist=60s -o 'User="piotr"' -o ConnectTimeout=10 -o 'ControlPath="/root/.ansible/cp/3baf2ea8c1"' 192.168.1.201 '/bin/sh -c '"'"'( umask 77 && mkdir -p "` echo /home/piotr/.ansible/tmp `"&& mkdir "` echo /home/piotr/.ansible/tmp/ansible-tmp-1713213993.6214252-498-237955354964614 `" && echo ansible-tmp-1713213993.6214252-498-237955354964614="` echo /home/piotr/.ansible/tmp/ansible-tmp-1713213993.6214252-498-237955354964614 `" ) && sleep 0'"'"''
<192.168.1.201> (0, b'ansible-tmp-1713213993.6214252-498-237955354964614=/home/piotr/.ansible/tmp/ansible-tmp-1713213993.6214252-498-237955354964614\n', b'')
Using module file /usr/lib/python3/dist-packages/ansible/modules/command.py
<192.168.1.201> PUT /root/.ansible/tmp/ansible-local-472ilie3vcr/tmpown1etfw TO /home/piotr/.ansible/tmp/ansible-tmp-1713213993.6214252-498-237955354964614/AnsiballZ_command.py
<192.168.1.201> SSH: EXEC sshpass -d12 sftp -o BatchMode=no -b - -C -o ControlMaster=auto -o ControlPersist=60s -o 'User="piotr"' -o ConnectTimeout=10 -o 'ControlPath="/root/.ansible/cp/3baf2ea8c1"' '[192.168.1.201]'
<192.168.1.201> (0, b'sftp> put /root/.ansible/tmp/ansible-local-472ilie3vcr/tmpown1etfw /home/piotr/.ansible/tmp/ansible-tmp-1713213993.6214252-498-237955354964614/AnsiballZ_command.py\n', b'')
<192.168.1.201> ESTABLISH SSH CONNECTION FOR USER: piotr
<192.168.1.201> SSH: EXEC sshpass -d12 ssh -C -o ControlMaster=auto -o ControlPersist=60s -o 'User="piotr"' -o ConnectTimeout=10 -o 'ControlPath="/root/.ansible/cp/3baf2ea8c1"' 192.168.1.201 '/bin/sh -c '"'"'chmod u+x /home/piotr/.ansible/tmp/ansible-tmp-1713213993.6214252-498-237955354964614/ /home/piotr/.ansible/tmp/ansible-tmp-1713213993.6214252-498-237955354964614/AnsiballZ_command.py && sleep 0'"'"''
<192.168.1.201> (0, b'', b'')
<192.168.1.201> ESTABLISH SSH CONNECTION FOR USER: piotr
<192.168.1.201> SSH: EXEC sshpass -d12 ssh -C -o ControlMaster=auto -o ControlPersist=60s -o 'User="piotr"' -o ConnectTimeout=10 -o 'ControlPath="/root/.ansible/cp/3baf2ea8c1"' -tt 192.168.1.201 '/bin/sh -c '"'"'sudo -H -S -p "[sudo via ansible, key=pybelymittnsspbiukmwjrhzpjcjlrry] password:" -u root /bin/sh -c '"'"'"'"'"'"'"'"'echo BECOME-SUCCESS-pybelymittnsspbiukmwjrhzpjcjlrry ; /usr/bin/python3 /home/piotr/.ansible/tmp/ansible-tmp-1713213993.6214252-498-237955354964614/AnsiballZ_command.py'"'"'"'"'"'"'"'"' && sleep 0'"'"''
Escalation succeeded
<192.168.1.201> (0, b'\r\n\r\n{"changed": true, "stdout": "lsrv-01", "stderr": "", "rc": 0, "cmd": "hostname", "start": "2024-04-15 20:46:35.201291", "end": "2024-04-15 20:46:35.204668", "delta": "0:00:00.003377", "msg": "", "invocation": {"module_args": {"_raw_params": "hostname", "_uses_shell": true, "expand_argument_vars": true, "stdin_add_newline": true, "strip_empty_ends": true, "argv": null, "chdir": null, "executable": null, "creates": null, "removes": null, "stdin": null}}}\r\n', b'Shared connection to 192.168.1.201 closed.\r\n')
<192.168.1.201> ESTABLISH SSH CONNECTION FOR USER: piotr
<192.168.1.201> SSH: EXEC sshpass -d12 ssh -C -o ControlMaster=auto -o ControlPersist=60s -o 'User="piotr"' -o ConnectTimeout=10 -o 'ControlPath="/root/.ansible/cp/3baf2ea8c1"' 192.168.1.201 '/bin/sh -c '"'"'rm -f -r /home/piotr/.ansible/tmp/ansible-tmp-1713213993.6214252-498-237955354964614/ > /dev/null 2>&1 && sleep 0'"'"''
<192.168.1.201> (0, b'', b'')
changed: [192.168.1.201] => {
    "changed": true,
    "cmd": "hostname",
    "delta": "0:00:00.003377",
    "end": "2024-04-15 20:46:35.204668",
    "invocation": {
        "module_args": {
            "_raw_params": "hostname",
            "_uses_shell": true,
            "argv": null,
            "chdir": null,
            "creates": null,
            "executable": null,
            "expand_argument_vars": true,
            "removes": null,
            "stdin": null,
            "stdin_add_newline": true,
            "strip_empty_ends": true
        }
    },
    "msg": "",
    "rc": 0,
    "start": "2024-04-15 20:46:35.201291",
    "stderr": "",
    "stderr_lines": [],
    "stdout": "lsrv-01",
    "stdout_lines": [
        "lsrv-01"
    ]
}

TASK [Print shell command output] **********************************************
task path: /mnt/ansible/ansible-install-ha.yaml:11
ok: [192.168.1.201] => {
    "msg": "lsrv-01"
}

TASK [Update apt package cache] ************************************************
task path: /mnt/ansible/ansible-install-ha.yaml:15
<192.168.1.201> ESTABLISH SSH CONNECTION FOR USER: piotr
<192.168.1.201> SSH: EXEC sshpass -d12 ssh -C -o ControlMaster=auto -o ControlPersist=60s -o 'User="piotr"' -o ConnectTimeout=10 -o 'ControlPath="/root/.ansible/cp/3baf2ea8c1"' 192.168.1.201 '/bin/sh -c '"'"'echo ~piotr && sleep 0'"'"''
<192.168.1.201> (0, b'/home/piotr\n', b'')
<192.168.1.201> ESTABLISH SSH CONNECTION FOR USER: piotr
<192.168.1.201> SSH: EXEC sshpass -d12 ssh -C -o ControlMaster=auto -o ControlPersist=60s -o 'User="piotr"' -o ConnectTimeout=10 -o 'ControlPath="/root/.ansible/cp/3baf2ea8c1"' 192.168.1.201 '/bin/sh -c '"'"'( umask 77 && mkdir -p "` echo /home/piotr/.ansible/tmp `"&& mkdir "` echo /home/piotr/.ansible/tmp/ansible-tmp-1713213994.1803148-514-165063984499280 `" && echo ansible-tmp-1713213994.1803148-514-165063984499280="` echo /home/piotr/.ansible/tmp/ansible-tmp-1713213994.1803148-514-165063984499280 `" ) && sleep 0'"'"''
<192.168.1.201> (0, b'ansible-tmp-1713213994.1803148-514-165063984499280=/home/piotr/.ansible/tmp/ansible-tmp-1713213994.1803148-514-165063984499280\n', b'')
Using module file /usr/lib/python3/dist-packages/ansible/modules/apt.py
<192.168.1.201> PUT /root/.ansible/tmp/ansible-local-472ilie3vcr/tmpdanjyqyu TO /home/piotr/.ansible/tmp/ansible-tmp-1713213994.1803148-514-165063984499280/AnsiballZ_apt.py
<192.168.1.201> SSH: EXEC sshpass -d12 sftp -o BatchMode=no -b - -C -o ControlMaster=auto -o ControlPersist=60s -o 'User="piotr"' -o ConnectTimeout=10 -o 'ControlPath="/root/.ansible/cp/3baf2ea8c1"' '[192.168.1.201]'
<192.168.1.201> (0, b'sftp> put /root/.ansible/tmp/ansible-local-472ilie3vcr/tmpdanjyqyu /home/piotr/.ansible/tmp/ansible-tmp-1713213994.1803148-514-165063984499280/AnsiballZ_apt.py\n', b'')
<192.168.1.201> ESTABLISH SSH CONNECTION FOR USER: piotr
<192.168.1.201> SSH: EXEC sshpass -d12 ssh -C -o ControlMaster=auto -o ControlPersist=60s -o 'User="piotr"' -o ConnectTimeout=10 -o 'ControlPath="/root/.ansible/cp/3baf2ea8c1"' 192.168.1.201 '/bin/sh -c '"'"'chmod u+x /home/piotr/.ansible/tmp/ansible-tmp-1713213994.1803148-514-165063984499280/ /home/piotr/.ansible/tmp/ansible-tmp-1713213994.1803148-514-165063984499280/AnsiballZ_apt.py && sleep 0'"'"''
<192.168.1.201> (0, b'', b'')
<192.168.1.201> ESTABLISH SSH CONNECTION FOR USER: piotr
<192.168.1.201> SSH: EXEC sshpass -d12 ssh -C -o ControlMaster=auto -o ControlPersist=60s -o 'User="piotr"' -o ConnectTimeout=10 -o 'ControlPath="/root/.ansible/cp/3baf2ea8c1"' -tt 192.168.1.201 '/bin/sh -c '"'"'sudo -H -S -p "[sudo via ansible, key=plhhtvliqgueogrkpsrsefujbzsvpdih] password:" -u root /bin/sh -c '"'"'"'"'"'"'"'"'echo BECOME-SUCCESS-plhhtvliqgueogrkpsrsefujbzsvpdih ; /usr/bin/python3 /home/piotr/.ansible/tmp/ansible-tmp-1713213994.1803148-514-165063984499280/AnsiballZ_apt.py'"'"'"'"'"'"'"'"' && sleep 0'"'"''
Escalation succeeded
<192.168.1.201> (0, b'\r\n\r\n{"changed": true, "cache_updated": true, "cache_update_time": 1713213996, "invocation": {"module_args": {"update_cache": true, "state": "present", "update_cache_retries": 5, "update_cache_retry_max_delay": 12, "cache_valid_time": 0, "purge": false, "force": false, "upgrade": null, "dpkg_options": "force-confdef,force-confold", "autoremove": false, "autoclean": false, "fail_on_autoremove": false, "only_upgrade": false, "force_apt_get": false, "clean": false, "allow_unauthenticated": false, "allow_downgrade": false, "allow_change_held_packages": false, "lock_timeout": 60, "package": null, "deb": null, "default_release": null, "install_recommends": null, "policy_rc_d": null}}}\r\n', b'Shared connection to 192.168.1.201 closed.\r\n')
<192.168.1.201> ESTABLISH SSH CONNECTION FOR USER: piotr
<192.168.1.201> SSH: EXEC sshpass -d12 ssh -C -o ControlMaster=auto -o ControlPersist=60s -o 'User="piotr"' -o ConnectTimeout=10 -o 'ControlPath="/root/.ansible/cp/3baf2ea8c1"' 192.168.1.201 '/bin/sh -c '"'"'rm -f -r /home/piotr/.ansible/tmp/ansible-tmp-1713213994.1803148-514-165063984499280/ > /dev/null 2>&1 && sleep 0'"'"''
<192.168.1.201> (0, b'', b'')
changed: [192.168.1.201] => {
    "cache_update_time": 1713213996,
    "cache_updated": true,
    "changed": true,
    "invocation": {
        "module_args": {
            "allow_change_held_packages": false,
            "allow_downgrade": false,
            "allow_unauthenticated": false,
            "autoclean": false,
            "autoremove": false,
            "cache_valid_time": 0,
            "clean": false,
            "deb": null,
            "default_release": null,
            "dpkg_options": "force-confdef,force-confold",
            "fail_on_autoremove": false,
            "force": false,
            "force_apt_get": false,
            "install_recommends": null,
            "lock_timeout": 60,
            "only_upgrade": false,
            "package": null,
            "policy_rc_d": null,
            "purge": false,
            "state": "present",
            "update_cache": true,
            "update_cache_retries": 5,
            "update_cache_retry_max_delay": 12,
            "upgrade": null
        }
    }
}

TASK [Upgrade all packages] ****************************************************
task path: /mnt/ansible/ansible-install-ha.yaml:19
<192.168.1.201> ESTABLISH SSH CONNECTION FOR USER: piotr
<192.168.1.201> SSH: EXEC sshpass -d12 ssh -C -o ControlMaster=auto -o ControlPersist=60s -o 'User="piotr"' -o ConnectTimeout=10 -o 'ControlPath="/root/.ansible/cp/3baf2ea8c1"' 192.168.1.201 '/bin/sh -c '"'"'echo ~piotr && sleep 0'"'"''
<192.168.1.201> (0, b'/home/piotr\n', b'')
<192.168.1.201> ESTABLISH SSH CONNECTION FOR USER: piotr
<192.168.1.201> SSH: EXEC sshpass -d12 ssh -C -o ControlMaster=auto -o ControlPersist=60s -o 'User="piotr"' -o ConnectTimeout=10 -o 'ControlPath="/root/.ansible/cp/3baf2ea8c1"' 192.168.1.201 '/bin/sh -c '"'"'( umask 77 && mkdir -p "` echo /home/piotr/.ansible/tmp `"&& mkdir "` echo /home/piotr/.ansible/tmp/ansible-tmp-1713213996.2533267-529-230985903149636 `" && echo ansible-tmp-1713213996.2533267-529-230985903149636="` echo /home/piotr/.ansible/tmp/ansible-tmp-1713213996.2533267-529-230985903149636 `" ) && sleep 0'"'"''
<192.168.1.201> (0, b'ansible-tmp-1713213996.2533267-529-230985903149636=/home/piotr/.ansible/tmp/ansible-tmp-1713213996.2533267-529-230985903149636\n', b'')
Using module file /usr/lib/python3/dist-packages/ansible/modules/apt.py
<192.168.1.201> PUT /root/.ansible/tmp/ansible-local-472ilie3vcr/tmpoqaucukl TO /home/piotr/.ansible/tmp/ansible-tmp-1713213996.2533267-529-230985903149636/AnsiballZ_apt.py
<192.168.1.201> SSH: EXEC sshpass -d12 sftp -o BatchMode=no -b - -C -o ControlMaster=auto -o ControlPersist=60s -o 'User="piotr"' -o ConnectTimeout=10 -o 'ControlPath="/root/.ansible/cp/3baf2ea8c1"' '[192.168.1.201]'
<192.168.1.201> (0, b'sftp> put /root/.ansible/tmp/ansible-local-472ilie3vcr/tmpoqaucukl /home/piotr/.ansible/tmp/ansible-tmp-1713213996.2533267-529-230985903149636/AnsiballZ_apt.py\n', b'')
<192.168.1.201> ESTABLISH SSH CONNECTION FOR USER: piotr
<192.168.1.201> SSH: EXEC sshpass -d12 ssh -C -o ControlMaster=auto -o ControlPersist=60s -o 'User="piotr"' -o ConnectTimeout=10 -o 'ControlPath="/root/.ansible/cp/3baf2ea8c1"' 192.168.1.201 '/bin/sh -c '"'"'chmod u+x /home/piotr/.ansible/tmp/ansible-tmp-1713213996.2533267-529-230985903149636/ /home/piotr/.ansible/tmp/ansible-tmp-1713213996.2533267-529-230985903149636/AnsiballZ_apt.py && sleep 0'"'"''
<192.168.1.201> (0, b'', b'')
<192.168.1.201> ESTABLISH SSH CONNECTION FOR USER: piotr
<192.168.1.201> SSH: EXEC sshpass -d12 ssh -C -o ControlMaster=auto -o ControlPersist=60s -o 'User="piotr"' -o ConnectTimeout=10 -o 'ControlPath="/root/.ansible/cp/3baf2ea8c1"' -tt 192.168.1.201 '/bin/sh -c '"'"'sudo -H -S -p "[sudo via ansible, key=rvgcklycfhmyjbkeotwoyugqhxwfkbpx] password:" -u root /bin/sh -c '"'"'"'"'"'"'"'"'echo BECOME-SUCCESS-rvgcklycfhmyjbkeotwoyugqhxwfkbpx ; /usr/bin/python3 /home/piotr/.ansible/tmp/ansible-tmp-1713213996.2533267-529-230985903149636/AnsiballZ_apt.py'"'"'"'"'"'"'"'"' && sleep 0'"'"''
Escalation succeeded
<192.168.1.201> (0, b'\r\n\r\n{"changed": false, "msg": "Reading package lists...\\nBuilding dependency tree...\\nReading state information...\\nCalculating upgrade...\\nThe following packages were automatically installed and are no longer required:\\n  libopenjp2-7 libwpe-1.0-1 libwpebackend-fdo-1.0-1\\nUse \'sudo apt autoremove\' to remove them.\\nThe following packages have been kept back:\\n  ubuntu-advantage-tools ubuntu-pro-client ubuntu-pro-client-l10n\\n0 upgraded, 0 newly installed, 0 to remove and 3 not upgraded.\\n", "stdout": "Reading package lists...\\nBuilding dependency tree...\\nReading state information...\\nCalculating upgrade...\\nThe following packages were automatically installed and are no longer required:\\n  libopenjp2-7 libwpe-1.0-1 libwpebackend-fdo-1.0-1\\nUse \'sudo apt autoremove\' to remove them.\\nThe following packages have been kept back:\\n  ubuntu-advantage-tools ubuntu-pro-client ubuntu-pro-client-l10n\\n0 upgraded, 0 newly installed, 0 to remove and 3 not upgraded.\\n", "stderr": "", "invocation": {"module_args": {"upgrade": "yes", "state": "present", "update_cache_retries": 5, "update_cache_retry_max_delay": 12, "cache_valid_time": 0, "purge": false, "force": false, "dpkg_options": "force-confdef,force-confold", "autoremove": false, "autoclean": false, "fail_on_autoremove": false, "only_upgrade": false, "force_apt_get": false, "clean": false, "allow_unauthenticated": false, "allow_downgrade": false, "allow_change_held_packages": false, "lock_timeout": 60, "update_cache": null, "package": null, "deb": null, "default_release": null, "install_recommends": null, "policy_rc_d": null}}}\r\n', b'Shared connection to 192.168.1.201 closed.\r\n')
<192.168.1.201> ESTABLISH SSH CONNECTION FOR USER: piotr
<192.168.1.201> SSH: EXEC sshpass -d12 ssh -C -o ControlMaster=auto -o ControlPersist=60s -o 'User="piotr"' -o ConnectTimeout=10 -o 'ControlPath="/root/.ansible/cp/3baf2ea8c1"' 192.168.1.201 '/bin/sh -c '"'"'rm -f -r /home/piotr/.ansible/tmp/ansible-tmp-1713213996.2533267-529-230985903149636/ > /dev/null 2>&1 && sleep 0'"'"''
<192.168.1.201> (0, b'', b'')
ok: [192.168.1.201] => {
    "changed": false,
    "invocation": {
        "module_args": {
            "allow_change_held_packages": false,
            "allow_downgrade": false,
            "allow_unauthenticated": false,
            "autoclean": false,
            "autoremove": false,
            "cache_valid_time": 0,
            "clean": false,
            "deb": null,
            "default_release": null,
            "dpkg_options": "force-confdef,force-confold",
            "fail_on_autoremove": false,
            "force": false,
            "force_apt_get": false,
            "install_recommends": null,
            "lock_timeout": 60,
            "only_upgrade": false,
            "package": null,
            "policy_rc_d": null,
            "purge": false,
            "state": "present",
            "update_cache": null,
            "update_cache_retries": 5,
            "update_cache_retry_max_delay": 12,
            "upgrade": "yes"
        }
    },
    "msg": "Reading package lists...\nBuilding dependency tree...\nReading state information...\nCalculating upgrade...\nThe following packages were automatically installed and are no longer required:\n  libopenjp2-7 libwpe-1.0-1 libwpebackend-fdo-1.0-1\nUse 'sudo apt autoremove' to remove them.\nThe following packages have been kept back:\n  ubuntu-advantage-tools ubuntu-pro-client ubuntu-pro-client-l10n\n0 upgraded, 0 newly installed, 0 to remove and 3 not upgraded.\n",
    "stderr": "",
    "stderr_lines": [],
    "stdout": "Reading package lists...\nBuilding dependency tree...\nReading state information...\nCalculating upgrade...\nThe following packages were automatically installed and are no longer required:\n  libopenjp2-7 libwpe-1.0-1 libwpebackend-fdo-1.0-1\nUse 'sudo apt autoremove' to remove them.\nThe following packages have been kept back:\n  ubuntu-advantage-tools ubuntu-pro-client ubuntu-pro-client-l10n\n0 upgraded, 0 newly installed, 0 to remove and 3 not upgraded.\n",
    "stdout_lines": [
        "Reading package lists...",
        "Building dependency tree...",
        "Reading state information...",
        "Calculating upgrade...",
        "The following packages were automatically installed and are no longer required:",
        "  libopenjp2-7 libwpe-1.0-1 libwpebackend-fdo-1.0-1",
        "Use 'sudo apt autoremove' to remove them.",
        "The following packages have been kept back:",
        "  ubuntu-advantage-tools ubuntu-pro-client ubuntu-pro-client-l10n",
        "0 upgraded, 0 newly installed, 0 to remove and 3 not upgraded."
    ]
}

TASK [Load a kernel module] ****************************************************
task path: /mnt/ansible/ansible-install-ha.yaml:23
<192.168.1.201> ESTABLISH SSH CONNECTION FOR USER: piotr
<192.168.1.201> SSH: EXEC sshpass -d12 ssh -C -o ControlMaster=auto -o ControlPersist=60s -o 'User="piotr"' -o ConnectTimeout=10 -o 'ControlPath="/root/.ansible/cp/3baf2ea8c1"' 192.168.1.201 '/bin/sh -c '"'"'echo ~piotr && sleep 0'"'"''
<192.168.1.201> (0, b'/home/piotr\n', b'')
<192.168.1.201> ESTABLISH SSH CONNECTION FOR USER: piotr
<192.168.1.201> SSH: EXEC sshpass -d12 ssh -C -o ControlMaster=auto -o ControlPersist=60s -o 'User="piotr"' -o ConnectTimeout=10 -o 'ControlPath="/root/.ansible/cp/3baf2ea8c1"' 192.168.1.201 '/bin/sh -c '"'"'( umask 77 && mkdir -p "` echo /home/piotr/.ansible/tmp `"&& mkdir "` echo /home/piotr/.ansible/tmp/ansible-tmp-1713213997.7258418-544-95316620848673 `" && echo ansible-tmp-1713213997.7258418-544-95316620848673="` echo /home/piotr/.ansible/tmp/ansible-tmp-1713213997.7258418-544-95316620848673 `" ) && sleep 0'"'"''
<192.168.1.201> (0, b'ansible-tmp-1713213997.7258418-544-95316620848673=/home/piotr/.ansible/tmp/ansible-tmp-1713213997.7258418-544-95316620848673\n', b'')
Using module file /usr/lib/python3/dist-packages/ansible/modules/command.py
<192.168.1.201> PUT /root/.ansible/tmp/ansible-local-472ilie3vcr/tmp3i09ye1j TO /home/piotr/.ansible/tmp/ansible-tmp-1713213997.7258418-544-95316620848673/AnsiballZ_command.py
<192.168.1.201> SSH: EXEC sshpass -d12 sftp -o BatchMode=no -b - -C -o ControlMaster=auto -o ControlPersist=60s -o 'User="piotr"' -o ConnectTimeout=10 -o 'ControlPath="/root/.ansible/cp/3baf2ea8c1"' '[192.168.1.201]'
<192.168.1.201> (0, b'sftp> put /root/.ansible/tmp/ansible-local-472ilie3vcr/tmp3i09ye1j /home/piotr/.ansible/tmp/ansible-tmp-1713213997.7258418-544-95316620848673/AnsiballZ_command.py\n', b'')
<192.168.1.201> ESTABLISH SSH CONNECTION FOR USER: piotr
<192.168.1.201> SSH: EXEC sshpass -d12 ssh -C -o ControlMaster=auto -o ControlPersist=60s -o 'User="piotr"' -o ConnectTimeout=10 -o 'ControlPath="/root/.ansible/cp/3baf2ea8c1"' 192.168.1.201 '/bin/sh -c '"'"'chmod u+x /home/piotr/.ansible/tmp/ansible-tmp-1713213997.7258418-544-95316620848673/ /home/piotr/.ansible/tmp/ansible-tmp-1713213997.7258418-544-95316620848673/AnsiballZ_command.py && sleep 0'"'"''
<192.168.1.201> (0, b'', b'')
<192.168.1.201> ESTABLISH SSH CONNECTION FOR USER: piotr
<192.168.1.201> SSH: EXEC sshpass -d12 ssh -C -o ControlMaster=auto -o ControlPersist=60s -o 'User="piotr"' -o ConnectTimeout=10 -o 'ControlPath="/root/.ansible/cp/3baf2ea8c1"' -tt 192.168.1.201 '/bin/sh -c '"'"'sudo -H -S -p "[sudo via ansible, key=zwjilgvbpdubrtvwskzonqcijpynoyof] password:" -u root /bin/sh -c '"'"'"'"'"'"'"'"'echo BECOME-SUCCESS-zwjilgvbpdubrtvwskzonqcijpynoyof ; /usr/bin/python3 /home/piotr/.ansible/tmp/ansible-tmp-1713213997.7258418-544-95316620848673/AnsiballZ_command.py'"'"'"'"'"'"'"'"' && sleep 0'"'"''
Escalation succeeded
<192.168.1.201> (0, b'\r\n\r\n{"changed": true, "stdout": "", "stderr": "", "rc": 0, "cmd": ["modprobe", "kvm"], "start": "2024-04-15 20:46:39.865453", "end": "2024-04-15 20:46:39.869268", "delta": "0:00:00.003815", "msg": "", "invocation": {"module_args": {"_raw_params": "modprobe kvm", "_uses_shell": false, "expand_argument_vars": true, "stdin_add_newline": true, "strip_empty_ends": true, "argv": null, "chdir": null, "executable": null, "creates": null, "removes": null, "stdin": null}}}\r\n', b'Shared connection to 192.168.1.201 closed.\r\n')
<192.168.1.201> ESTABLISH SSH CONNECTION FOR USER: piotr
<192.168.1.201> SSH: EXEC sshpass -d12 ssh -C -o ControlMaster=auto -o ControlPersist=60s -o 'User="piotr"' -o ConnectTimeout=10 -o 'ControlPath="/root/.ansible/cp/3baf2ea8c1"' 192.168.1.201 '/bin/sh -c '"'"'rm -f -r /home/piotr/.ansible/tmp/ansible-tmp-1713213997.7258418-544-95316620848673/ > /dev/null 2>&1 && sleep 0'"'"''
<192.168.1.201> (0, b'', b'')
changed: [192.168.1.201] => {
    "changed": true,
    "cmd": [
        "modprobe",
        "kvm"
    ],
    "delta": "0:00:00.003815",
    "end": "2024-04-15 20:46:39.869268",
    "invocation": {
        "module_args": {
            "_raw_params": "modprobe kvm",
            "_uses_shell": false,
            "argv": null,
            "chdir": null,
            "creates": null,
            "executable": null,
            "expand_argument_vars": true,
            "removes": null,
            "stdin": null,
            "stdin_add_newline": true,
            "strip_empty_ends": true
        }
    },
    "msg": "",
    "rc": 0,
    "start": "2024-04-15 20:46:39.865453",
    "stderr": "",
    "stderr_lines": [],
    "stdout": "",
    "stdout_lines": []
}

TASK [Add user to kvm group] ***************************************************
task path: /mnt/ansible/ansible-install-ha.yaml:26
<192.168.1.201> ESTABLISH SSH CONNECTION FOR USER: piotr
<192.168.1.201> SSH: EXEC sshpass -d12 ssh -C -o ControlMaster=auto -o ControlPersist=60s -o 'User="piotr"' -o ConnectTimeout=10 -o 'ControlPath="/root/.ansible/cp/3baf2ea8c1"' 192.168.1.201 '/bin/sh -c '"'"'echo ~piotr && sleep 0'"'"''
<192.168.1.201> (0, b'/home/piotr\n', b'')
<192.168.1.201> ESTABLISH SSH CONNECTION FOR USER: piotr
<192.168.1.201> SSH: EXEC sshpass -d12 ssh -C -o ControlMaster=auto -o ControlPersist=60s -o 'User="piotr"' -o ConnectTimeout=10 -o 'ControlPath="/root/.ansible/cp/3baf2ea8c1"' 192.168.1.201 '/bin/sh -c '"'"'( umask 77 && mkdir -p "` echo /home/piotr/.ansible/tmp `"&& mkdir "` echo /home/piotr/.ansible/tmp/ansible-tmp-1713213998.9509768-559-7912300595317 `" && echo ansible-tmp-1713213998.9509768-559-7912300595317="` echo /home/piotr/.ansible/tmp/ansible-tmp-1713213998.9509768-559-7912300595317 `" ) && sleep 0'"'"''
<192.168.1.201> (0, b'ansible-tmp-1713213998.9509768-559-7912300595317=/home/piotr/.ansible/tmp/ansible-tmp-1713213998.9509768-559-7912300595317\n', b'')
Using module file /usr/lib/python3/dist-packages/ansible/modules/user.py
<192.168.1.201> PUT /root/.ansible/tmp/ansible-local-472ilie3vcr/tmpanuw5mat TO /home/piotr/.ansible/tmp/ansible-tmp-1713213998.9509768-559-7912300595317/AnsiballZ_user.py
<192.168.1.201> SSH: EXEC sshpass -d12 sftp -o BatchMode=no -b - -C -o ControlMaster=auto -o ControlPersist=60s -o 'User="piotr"' -o ConnectTimeout=10 -o 'ControlPath="/root/.ansible/cp/3baf2ea8c1"' '[192.168.1.201]'
<192.168.1.201> (0, b'sftp> put /root/.ansible/tmp/ansible-local-472ilie3vcr/tmpanuw5mat /home/piotr/.ansible/tmp/ansible-tmp-1713213998.9509768-559-7912300595317/AnsiballZ_user.py\n', b'')
<192.168.1.201> ESTABLISH SSH CONNECTION FOR USER: piotr
<192.168.1.201> SSH: EXEC sshpass -d12 ssh -C -o ControlMaster=auto -o ControlPersist=60s -o 'User="piotr"' -o ConnectTimeout=10 -o 'ControlPath="/root/.ansible/cp/3baf2ea8c1"' 192.168.1.201 '/bin/sh -c '"'"'chmod u+x /home/piotr/.ansible/tmp/ansible-tmp-1713213998.9509768-559-7912300595317/ /home/piotr/.ansible/tmp/ansible-tmp-1713213998.9509768-559-7912300595317/AnsiballZ_user.py && sleep 0'"'"''
<192.168.1.201> (0, b'', b'')
<192.168.1.201> ESTABLISH SSH CONNECTION FOR USER: piotr
<192.168.1.201> SSH: EXEC sshpass -d12 ssh -C -o ControlMaster=auto -o ControlPersist=60s -o 'User="piotr"' -o ConnectTimeout=10 -o 'ControlPath="/root/.ansible/cp/3baf2ea8c1"' -tt 192.168.1.201 '/bin/sh -c '"'"'sudo -H -S -p "[sudo via ansible, key=pyplmdnjizijzpkfhyvezaqqsrxkoskp] password:" -u root /bin/sh -c '"'"'"'"'"'"'"'"'echo BECOME-SUCCESS-pyplmdnjizijzpkfhyvezaqqsrxkoskp ; /usr/bin/python3 /home/piotr/.ansible/tmp/ansible-tmp-1713213998.9509768-559-7912300595317/AnsiballZ_user.py'"'"'"'"'"'"'"'"' && sleep 0'"'"''
Escalation succeeded
<192.168.1.201> (0, b'\r\n\r\n{"name": "piotr", "state": "present", "append": true, "move_home": false, "changed": false, "uid": 1000, "group": 1000, "comment": "piotr", "home": "/home/piotr", "shell": "/bin/bash", "groups": "kvm", "invocation": {"module_args": {"name": "piotr", "groups": ["kvm"], "append": true, "state": "present", "non_unique": false, "force": false, "remove": false, "create_home": true, "system": false, "move_home": false, "ssh_key_bits": 0, "ssh_key_type": "rsa", "ssh_key_comment": "ansible-generated on lsrv-01", "update_password": "always", "uid": null, "group": null, "comment": null, "home": null, "shell": null, "password": null, "login_class": null, "password_expire_max": null, "password_expire_min": null, "password_expire_warn": null, "hidden": null, "seuser": null, "skeleton": null, "generate_ssh_key": null, "ssh_key_file": null, "ssh_key_passphrase": null, "expires": null, "password_lock": null, "local": null, "profile": null, "authorization": null, "role": null, "umask": null}}}\r\n', b'Shared connection to 192.168.1.201 closed.\r\n')
<192.168.1.201> ESTABLISH SSH CONNECTION FOR USER: piotr
<192.168.1.201> SSH: EXEC sshpass -d12 ssh -C -o ControlMaster=auto -o ControlPersist=60s -o 'User="piotr"' -o ConnectTimeout=10 -o 'ControlPath="/root/.ansible/cp/3baf2ea8c1"' 192.168.1.201 '/bin/sh -c '"'"'rm -f -r /home/piotr/.ansible/tmp/ansible-tmp-1713213998.9509768-559-7912300595317/ > /dev/null 2>&1 && sleep 0'"'"''
<192.168.1.201> (0, b'', b'')
ok: [192.168.1.201] => {
    "append": true,
    "changed": false,
    "comment": "piotr",
    "group": 1000,
    "groups": "kvm",
    "home": "/home/piotr",
    "invocation": {
        "module_args": {
            "append": true,
            "authorization": null,
            "comment": null,
            "create_home": true,
            "expires": null,
            "force": false,
            "generate_ssh_key": null,
            "group": null,
            "groups": [
                "kvm"
            ],
            "hidden": null,
            "home": null,
            "local": null,
            "login_class": null,
            "move_home": false,
            "name": "piotr",
            "non_unique": false,
            "password": null,
            "password_expire_max": null,
            "password_expire_min": null,
            "password_expire_warn": null,
            "password_lock": null,
            "profile": null,
            "remove": false,
            "role": null,
            "seuser": null,
            "shell": null,
            "skeleton": null,
            "ssh_key_bits": 0,
            "ssh_key_comment": "ansible-generated on lsrv-01",
            "ssh_key_file": null,
            "ssh_key_passphrase": null,
            "ssh_key_type": "rsa",
            "state": "present",
            "system": false,
            "uid": null,
            "umask": null,
            "update_password": "always"
        }
    },
    "move_home": false,
    "name": "piotr",
    "shell": "/bin/bash",
    "state": "present",
    "uid": 1000
}

TASK [Install GNOME Terminal package] ******************************************
task path: /mnt/ansible/ansible-install-ha.yaml:32
<192.168.1.201> ESTABLISH SSH CONNECTION FOR USER: piotr
<192.168.1.201> SSH: EXEC sshpass -d12 ssh -C -o ControlMaster=auto -o ControlPersist=60s -o 'User="piotr"' -o ConnectTimeout=10 -o 'ControlPath="/root/.ansible/cp/3baf2ea8c1"' 192.168.1.201 '/bin/sh -c '"'"'echo ~piotr && sleep 0'"'"''
<192.168.1.201> (0, b'/home/piotr\n', b'')
<192.168.1.201> ESTABLISH SSH CONNECTION FOR USER: piotr
<192.168.1.201> SSH: EXEC sshpass -d12 ssh -C -o ControlMaster=auto -o ControlPersist=60s -o 'User="piotr"' -o ConnectTimeout=10 -o 'ControlPath="/root/.ansible/cp/3baf2ea8c1"' 192.168.1.201 '/bin/sh -c '"'"'( umask 77 && mkdir -p "` echo /home/piotr/.ansible/tmp `"&& mkdir "` echo /home/piotr/.ansible/tmp/ansible-tmp-1713213999.7572277-574-21293499832116 `" && echo ansible-tmp-1713213999.7572277-574-21293499832116="` echo /home/piotr/.ansible/tmp/ansible-tmp-1713213999.7572277-574-21293499832116 `" ) && sleep 0'"'"''
<192.168.1.201> (0, b'ansible-tmp-1713213999.7572277-574-21293499832116=/home/piotr/.ansible/tmp/ansible-tmp-1713213999.7572277-574-21293499832116\n', b'')
Using module file /usr/lib/python3/dist-packages/ansible/modules/apt.py
<192.168.1.201> PUT /root/.ansible/tmp/ansible-local-472ilie3vcr/tmpyyujuol5 TO /home/piotr/.ansible/tmp/ansible-tmp-1713213999.7572277-574-21293499832116/AnsiballZ_apt.py
<192.168.1.201> SSH: EXEC sshpass -d12 sftp -o BatchMode=no -b - -C -o ControlMaster=auto -o ControlPersist=60s -o 'User="piotr"' -o ConnectTimeout=10 -o 'ControlPath="/root/.ansible/cp/3baf2ea8c1"' '[192.168.1.201]'
<192.168.1.201> (0, b'sftp> put /root/.ansible/tmp/ansible-local-472ilie3vcr/tmpyyujuol5 /home/piotr/.ansible/tmp/ansible-tmp-1713213999.7572277-574-21293499832116/AnsiballZ_apt.py\n', b'')
<192.168.1.201> ESTABLISH SSH CONNECTION FOR USER: piotr
<192.168.1.201> SSH: EXEC sshpass -d12 ssh -C -o ControlMaster=auto -o ControlPersist=60s -o 'User="piotr"' -o ConnectTimeout=10 -o 'ControlPath="/root/.ansible/cp/3baf2ea8c1"' 192.168.1.201 '/bin/sh -c '"'"'chmod u+x /home/piotr/.ansible/tmp/ansible-tmp-1713213999.7572277-574-21293499832116/ /home/piotr/.ansible/tmp/ansible-tmp-1713213999.7572277-574-21293499832116/AnsiballZ_apt.py && sleep 0'"'"''
<192.168.1.201> (0, b'', b'')
<192.168.1.201> ESTABLISH SSH CONNECTION FOR USER: piotr
<192.168.1.201> SSH: EXEC sshpass -d12 ssh -C -o ControlMaster=auto -o ControlPersist=60s -o 'User="piotr"' -o ConnectTimeout=10 -o 'ControlPath="/root/.ansible/cp/3baf2ea8c1"' -tt 192.168.1.201 '/bin/sh -c '"'"'sudo -H -S -p "[sudo via ansible, key=oqwpbpirmlemvekzeymoyzgsjzlcjqzi] password:" -u root /bin/sh -c '"'"'"'"'"'"'"'"'echo BECOME-SUCCESS-oqwpbpirmlemvekzeymoyzgsjzlcjqzi ; /usr/bin/python3 /home/piotr/.ansible/tmp/ansible-tmp-1713213999.7572277-574-21293499832116/AnsiballZ_apt.py'"'"'"'"'"'"'"'"' && sleep 0'"'"''
Escalation succeeded
<192.168.1.201> (0, b'\r\n\r\n{"changed": false, "cache_updated": false, "cache_update_time": 1713213996, "invocation": {"module_args": {"name": "gnome-terminal", "state": "present", "package": ["gnome-terminal"], "update_cache_retries": 5, "update_cache_retry_max_delay": 12, "cache_valid_time": 0, "purge": false, "force": false, "upgrade": null, "dpkg_options": "force-confdef,force-confold", "autoremove": false, "autoclean": false, "fail_on_autoremove": false, "only_upgrade": false, "force_apt_get": false, "clean": false, "allow_unauthenticated": false, "allow_downgrade": false, "allow_change_held_packages": false, "lock_timeout": 60, "update_cache": null, "deb": null, "default_release": null, "install_recommends": null, "policy_rc_d": null}}}\r\n', b'Shared connection to 192.168.1.201 closed.\r\n')
<192.168.1.201> ESTABLISH SSH CONNECTION FOR USER: piotr
<192.168.1.201> SSH: EXEC sshpass -d12 ssh -C -o ControlMaster=auto -o ControlPersist=60s -o 'User="piotr"' -o ConnectTimeout=10 -o 'ControlPath="/root/.ansible/cp/3baf2ea8c1"' 192.168.1.201 '/bin/sh -c '"'"'rm -f -r /home/piotr/.ansible/tmp/ansible-tmp-1713213999.7572277-574-21293499832116/ > /dev/null 2>&1 && sleep 0'"'"''
<192.168.1.201> (0, b'', b'')
ok: [192.168.1.201] => {
    "cache_update_time": 1713213996,
    "cache_updated": false,
    "changed": false,
    "invocation": {
        "module_args": {
            "allow_change_held_packages": false,
            "allow_downgrade": false,
            "allow_unauthenticated": false,
            "autoclean": false,
            "autoremove": false,
            "cache_valid_time": 0,
            "clean": false,
            "deb": null,
            "default_release": null,
            "dpkg_options": "force-confdef,force-confold",
            "fail_on_autoremove": false,
            "force": false,
            "force_apt_get": false,
            "install_recommends": null,
            "lock_timeout": 60,
            "name": "gnome-terminal",
            "only_upgrade": false,
            "package": [
                "gnome-terminal"
            ],
            "policy_rc_d": null,
            "purge": false,
            "state": "present",
            "update_cache": null,
            "update_cache_retries": 5,
            "update_cache_retry_max_delay": 12,
            "upgrade": null
        }
    }
}

TASK [Remove Docker packages] **************************************************
task path: /mnt/ansible/ansible-install-ha.yaml:37
<192.168.1.201> ESTABLISH SSH CONNECTION FOR USER: piotr
<192.168.1.201> SSH: EXEC sshpass -d12 ssh -C -o ControlMaster=auto -o ControlPersist=60s -o 'User="piotr"' -o ConnectTimeout=10 -o 'ControlPath="/root/.ansible/cp/3baf2ea8c1"' 192.168.1.201 '/bin/sh -c '"'"'echo ~piotr && sleep 0'"'"''
<192.168.1.201> (0, b'/home/piotr\n', b'')
<192.168.1.201> ESTABLISH SSH CONNECTION FOR USER: piotr
<192.168.1.201> SSH: EXEC sshpass -d12 ssh -C -o ControlMaster=auto -o ControlPersist=60s -o 'User="piotr"' -o ConnectTimeout=10 -o 'ControlPath="/root/.ansible/cp/3baf2ea8c1"' 192.168.1.201 '/bin/sh -c '"'"'( umask 77 && mkdir -p "` echo /home/piotr/.ansible/tmp `"&& mkdir "` echo /home/piotr/.ansible/tmp/ansible-tmp-1713214000.918241-589-186058609534999 `" && echo ansible-tmp-1713214000.918241-589-186058609534999="` echo /home/piotr/.ansible/tmp/ansible-tmp-1713214000.918241-589-186058609534999 `" ) && sleep 0'"'"''
<192.168.1.201> (0, b'ansible-tmp-1713214000.918241-589-186058609534999=/home/piotr/.ansible/tmp/ansible-tmp-1713214000.918241-589-186058609534999\n', b'')
Using module file /usr/lib/python3/dist-packages/ansible/modules/apt.py
<192.168.1.201> PUT /root/.ansible/tmp/ansible-local-472ilie3vcr/tmpkzhz00kd TO /home/piotr/.ansible/tmp/ansible-tmp-1713214000.918241-589-186058609534999/AnsiballZ_apt.py
<192.168.1.201> SSH: EXEC sshpass -d12 sftp -o BatchMode=no -b - -C -o ControlMaster=auto -o ControlPersist=60s -o 'User="piotr"' -o ConnectTimeout=10 -o 'ControlPath="/root/.ansible/cp/3baf2ea8c1"' '[192.168.1.201]'
<192.168.1.201> (0, b'sftp> put /root/.ansible/tmp/ansible-local-472ilie3vcr/tmpkzhz00kd /home/piotr/.ansible/tmp/ansible-tmp-1713214000.918241-589-186058609534999/AnsiballZ_apt.py\n', b'')
<192.168.1.201> ESTABLISH SSH CONNECTION FOR USER: piotr
<192.168.1.201> SSH: EXEC sshpass -d12 ssh -C -o ControlMaster=auto -o ControlPersist=60s -o 'User="piotr"' -o ConnectTimeout=10 -o 'ControlPath="/root/.ansible/cp/3baf2ea8c1"' 192.168.1.201 '/bin/sh -c '"'"'chmod u+x /home/piotr/.ansible/tmp/ansible-tmp-1713214000.918241-589-186058609534999/ /home/piotr/.ansible/tmp/ansible-tmp-1713214000.918241-589-186058609534999/AnsiballZ_apt.py && sleep 0'"'"''
<192.168.1.201> (0, b'', b'')
<192.168.1.201> ESTABLISH SSH CONNECTION FOR USER: piotr
<192.168.1.201> SSH: EXEC sshpass -d12 ssh -C -o ControlMaster=auto -o ControlPersist=60s -o 'User="piotr"' -o ConnectTimeout=10 -o 'ControlPath="/root/.ansible/cp/3baf2ea8c1"' -tt 192.168.1.201 '/bin/sh -c '"'"'sudo -H -S -p "[sudo via ansible, key=ttsdydjzpgrawvmhdghlrhtqlbalmfws] password:" -u root /bin/sh -c '"'"'"'"'"'"'"'"'echo BECOME-SUCCESS-ttsdydjzpgrawvmhdghlrhtqlbalmfws ; /usr/bin/python3 /home/piotr/.ansible/tmp/ansible-tmp-1713214000.918241-589-186058609534999/AnsiballZ_apt.py'"'"'"'"'"'"'"'"' && sleep 0'"'"''
Escalation succeeded
<192.168.1.201> (0, b'\r\n\r\n{"changed": false, "invocation": {"module_args": {"name": "docker.io", "state": "absent", "package": ["docker.io"], "update_cache_retries": 5, "update_cache_retry_max_delay": 12, "cache_valid_time": 0, "purge": false, "force": false, "upgrade": null, "dpkg_options": "force-confdef,force-confold", "autoremove": false, "autoclean": false, "fail_on_autoremove": false, "only_upgrade": false, "force_apt_get": false, "clean": false, "allow_unauthenticated": false, "allow_downgrade": false, "allow_change_held_packages": false, "lock_timeout": 60, "update_cache": null, "deb": null, "default_release": null, "install_recommends": null, "policy_rc_d": null}}}\r\n', b'Shared connection to 192.168.1.201 closed.\r\n')
<192.168.1.201> ESTABLISH SSH CONNECTION FOR USER: piotr
<192.168.1.201> SSH: EXEC sshpass -d12 ssh -C -o ControlMaster=auto -o ControlPersist=60s -o 'User="piotr"' -o ConnectTimeout=10 -o 'ControlPath="/root/.ansible/cp/3baf2ea8c1"' 192.168.1.201 '/bin/sh -c '"'"'rm -f -r /home/piotr/.ansible/tmp/ansible-tmp-1713214000.918241-589-186058609534999/ > /dev/null 2>&1 && sleep 0'"'"''
<192.168.1.201> (0, b'', b'')
ok: [192.168.1.201] => (item=docker.io) => {
    "ansible_loop_var": "item",
    "changed": false,
    "invocation": {
        "module_args": {
            "allow_change_held_packages": false,
            "allow_downgrade": false,
            "allow_unauthenticated": false,
            "autoclean": false,
            "autoremove": false,
            "cache_valid_time": 0,
            "clean": false,
            "deb": null,
            "default_release": null,
            "dpkg_options": "force-confdef,force-confold",
            "fail_on_autoremove": false,
            "force": false,
            "force_apt_get": false,
            "install_recommends": null,
            "lock_timeout": 60,
            "name": "docker.io",
            "only_upgrade": false,
            "package": [
                "docker.io"
            ],
            "policy_rc_d": null,
            "purge": false,
            "state": "absent",
            "update_cache": null,
            "update_cache_retries": 5,
            "update_cache_retry_max_delay": 12,
            "upgrade": null
        }
    },
    "item": "docker.io"
}
<192.168.1.201> ESTABLISH SSH CONNECTION FOR USER: piotr
<192.168.1.201> SSH: EXEC sshpass -d12 ssh -C -o ControlMaster=auto -o ControlPersist=60s -o 'User="piotr"' -o ConnectTimeout=10 -o 'ControlPath="/root/.ansible/cp/3baf2ea8c1"' 192.168.1.201 '/bin/sh -c '"'"'echo ~piotr && sleep 0'"'"''
<192.168.1.201> (0, b'/home/piotr\n', b'')
<192.168.1.201> ESTABLISH SSH CONNECTION FOR USER: piotr
<192.168.1.201> SSH: EXEC sshpass -d12 ssh -C -o ControlMaster=auto -o ControlPersist=60s -o 'User="piotr"' -o ConnectTimeout=10 -o 'ControlPath="/root/.ansible/cp/3baf2ea8c1"' 192.168.1.201 '/bin/sh -c '"'"'( umask 77 && mkdir -p "` echo /home/piotr/.ansible/tmp `"&& mkdir "` echo /home/piotr/.ansible/tmp/ansible-tmp-1713214001.8311243-589-1544711447545 `" && echo ansible-tmp-1713214001.8311243-589-1544711447545="` echo /home/piotr/.ansible/tmp/ansible-tmp-1713214001.8311243-589-1544711447545 `" ) && sleep 0'"'"''
<192.168.1.201> (0, b'ansible-tmp-1713214001.8311243-589-1544711447545=/home/piotr/.ansible/tmp/ansible-tmp-1713214001.8311243-589-1544711447545\n', b'')
Using module file /usr/lib/python3/dist-packages/ansible/modules/apt.py
<192.168.1.201> PUT /root/.ansible/tmp/ansible-local-472ilie3vcr/tmp9x970jf9 TO /home/piotr/.ansible/tmp/ansible-tmp-1713214001.8311243-589-1544711447545/AnsiballZ_apt.py
<192.168.1.201> SSH: EXEC sshpass -d12 sftp -o BatchMode=no -b - -C -o ControlMaster=auto -o ControlPersist=60s -o 'User="piotr"' -o ConnectTimeout=10 -o 'ControlPath="/root/.ansible/cp/3baf2ea8c1"' '[192.168.1.201]'
<192.168.1.201> (0, b'sftp> put /root/.ansible/tmp/ansible-local-472ilie3vcr/tmp9x970jf9 /home/piotr/.ansible/tmp/ansible-tmp-1713214001.8311243-589-1544711447545/AnsiballZ_apt.py\n', b'')
<192.168.1.201> ESTABLISH SSH CONNECTION FOR USER: piotr
<192.168.1.201> SSH: EXEC sshpass -d12 ssh -C -o ControlMaster=auto -o ControlPersist=60s -o 'User="piotr"' -o ConnectTimeout=10 -o 'ControlPath="/root/.ansible/cp/3baf2ea8c1"' 192.168.1.201 '/bin/sh -c '"'"'chmod u+x /home/piotr/.ansible/tmp/ansible-tmp-1713214001.8311243-589-1544711447545/ /home/piotr/.ansible/tmp/ansible-tmp-1713214001.8311243-589-1544711447545/AnsiballZ_apt.py && sleep 0'"'"''
<192.168.1.201> (0, b'', b'')
<192.168.1.201> ESTABLISH SSH CONNECTION FOR USER: piotr
<192.168.1.201> SSH: EXEC sshpass -d12 ssh -C -o ControlMaster=auto -o ControlPersist=60s -o 'User="piotr"' -o ConnectTimeout=10 -o 'ControlPath="/root/.ansible/cp/3baf2ea8c1"' -tt 192.168.1.201 '/bin/sh -c '"'"'sudo -H -S -p "[sudo via ansible, key=mktcwuvahokaxwrwivesbmskxwwehqou] password:" -u root /bin/sh -c '"'"'"'"'"'"'"'"'echo BECOME-SUCCESS-mktcwuvahokaxwrwivesbmskxwwehqou ; /usr/bin/python3 /home/piotr/.ansible/tmp/ansible-tmp-1713214001.8311243-589-1544711447545/AnsiballZ_apt.py'"'"'"'"'"'"'"'"' && sleep 0'"'"''
Escalation succeeded
<192.168.1.201> (0, b'\r\n\r\n{"changed": false, "invocation": {"module_args": {"name": "docker-doc", "state": "absent", "package": ["docker-doc"], "update_cache_retries": 5, "update_cache_retry_max_delay": 12, "cache_valid_time": 0, "purge": false, "force": false, "upgrade": null, "dpkg_options": "force-confdef,force-confold", "autoremove": false, "autoclean": false, "fail_on_autoremove": false, "only_upgrade": false, "force_apt_get": false, "clean": false, "allow_unauthenticated": false, "allow_downgrade": false, "allow_change_held_packages": false, "lock_timeout": 60, "update_cache": null, "deb": null, "default_release": null, "install_recommends": null, "policy_rc_d": null}}}\r\n', b'Shared connection to 192.168.1.201 closed.\r\n')
<192.168.1.201> ESTABLISH SSH CONNECTION FOR USER: piotr
<192.168.1.201> SSH: EXEC sshpass -d12 ssh -C -o ControlMaster=auto -o ControlPersist=60s -o 'User="piotr"' -o ConnectTimeout=10 -o 'ControlPath="/root/.ansible/cp/3baf2ea8c1"' 192.168.1.201 '/bin/sh -c '"'"'rm -f -r /home/piotr/.ansible/tmp/ansible-tmp-1713214001.8311243-589-1544711447545/ > /dev/null 2>&1 && sleep 0'"'"''
<192.168.1.201> (0, b'', b'')
ok: [192.168.1.201] => (item=docker-doc) => {
    "ansible_loop_var": "item",
    "changed": false,
    "invocation": {
        "module_args": {
            "allow_change_held_packages": false,
            "allow_downgrade": false,
            "allow_unauthenticated": false,
            "autoclean": false,
            "autoremove": false,
            "cache_valid_time": 0,
            "clean": false,
            "deb": null,
            "default_release": null,
            "dpkg_options": "force-confdef,force-confold",
            "fail_on_autoremove": false,
            "force": false,
            "force_apt_get": false,
            "install_recommends": null,
            "lock_timeout": 60,
            "name": "docker-doc",
            "only_upgrade": false,
            "package": [
                "docker-doc"
            ],
            "policy_rc_d": null,
            "purge": false,
            "state": "absent",
            "update_cache": null,
            "update_cache_retries": 5,
            "update_cache_retry_max_delay": 12,
            "upgrade": null
        }
    },
    "item": "docker-doc"
}
<192.168.1.201> ESTABLISH SSH CONNECTION FOR USER: piotr
<192.168.1.201> SSH: EXEC sshpass -d12 ssh -C -o ControlMaster=auto -o ControlPersist=60s -o 'User="piotr"' -o ConnectTimeout=10 -o 'ControlPath="/root/.ansible/cp/3baf2ea8c1"' 192.168.1.201 '/bin/sh -c '"'"'echo ~piotr && sleep 0'"'"''
<192.168.1.201> (0, b'/home/piotr\n', b'')
<192.168.1.201> ESTABLISH SSH CONNECTION FOR USER: piotr
<192.168.1.201> SSH: EXEC sshpass -d12 ssh -C -o ControlMaster=auto -o ControlPersist=60s -o 'User="piotr"' -o ConnectTimeout=10 -o 'ControlPath="/root/.ansible/cp/3baf2ea8c1"' 192.168.1.201 '/bin/sh -c '"'"'( umask 77 && mkdir -p "` echo /home/piotr/.ansible/tmp `"&& mkdir "` echo /home/piotr/.ansible/tmp/ansible-tmp-1713214002.847376-589-152904375812625 `" && echo ansible-tmp-1713214002.847376-589-152904375812625="` echo /home/piotr/.ansible/tmp/ansible-tmp-1713214002.847376-589-152904375812625 `" ) && sleep 0'"'"''
<192.168.1.201> (0, b'ansible-tmp-1713214002.847376-589-152904375812625=/home/piotr/.ansible/tmp/ansible-tmp-1713214002.847376-589-152904375812625\n', b'')
Using module file /usr/lib/python3/dist-packages/ansible/modules/apt.py
<192.168.1.201> PUT /root/.ansible/tmp/ansible-local-472ilie3vcr/tmpbuohq30i TO /home/piotr/.ansible/tmp/ansible-tmp-1713214002.847376-589-152904375812625/AnsiballZ_apt.py
<192.168.1.201> SSH: EXEC sshpass -d12 sftp -o BatchMode=no -b - -C -o ControlMaster=auto -o ControlPersist=60s -o 'User="piotr"' -o ConnectTimeout=10 -o 'ControlPath="/root/.ansible/cp/3baf2ea8c1"' '[192.168.1.201]'
<192.168.1.201> (0, b'sftp> put /root/.ansible/tmp/ansible-local-472ilie3vcr/tmpbuohq30i /home/piotr/.ansible/tmp/ansible-tmp-1713214002.847376-589-152904375812625/AnsiballZ_apt.py\n', b'')
<192.168.1.201> ESTABLISH SSH CONNECTION FOR USER: piotr
<192.168.1.201> SSH: EXEC sshpass -d12 ssh -C -o ControlMaster=auto -o ControlPersist=60s -o 'User="piotr"' -o ConnectTimeout=10 -o 'ControlPath="/root/.ansible/cp/3baf2ea8c1"' 192.168.1.201 '/bin/sh -c '"'"'chmod u+x /home/piotr/.ansible/tmp/ansible-tmp-1713214002.847376-589-152904375812625/ /home/piotr/.ansible/tmp/ansible-tmp-1713214002.847376-589-152904375812625/AnsiballZ_apt.py && sleep 0'"'"''
<192.168.1.201> (0, b'', b'')
<192.168.1.201> ESTABLISH SSH CONNECTION FOR USER: piotr
<192.168.1.201> SSH: EXEC sshpass -d12 ssh -C -o ControlMaster=auto -o ControlPersist=60s -o 'User="piotr"' -o ConnectTimeout=10 -o 'ControlPath="/root/.ansible/cp/3baf2ea8c1"' -tt 192.168.1.201 '/bin/sh -c '"'"'sudo -H -S -p "[sudo via ansible, key=oeehyzpyoffdtwvbhdnzepbivxxxhefd] password:" -u root /bin/sh -c '"'"'"'"'"'"'"'"'echo BECOME-SUCCESS-oeehyzpyoffdtwvbhdnzepbivxxxhefd ; /usr/bin/python3 /home/piotr/.ansible/tmp/ansible-tmp-1713214002.847376-589-152904375812625/AnsiballZ_apt.py'"'"'"'"'"'"'"'"' && sleep 0'"'"''
Escalation succeeded
<192.168.1.201> (0, b'\r\n\r\n{"changed": false, "invocation": {"module_args": {"name": "docker-compose", "state": "absent", "package": ["docker-compose"], "update_cache_retries": 5, "update_cache_retry_max_delay": 12, "cache_valid_time": 0, "purge": false, "force": false, "upgrade": null, "dpkg_options": "force-confdef,force-confold", "autoremove": false, "autoclean": false, "fail_on_autoremove": false, "only_upgrade": false, "force_apt_get": false, "clean": false, "allow_unauthenticated": false, "allow_downgrade": false, "allow_change_held_packages": false, "lock_timeout": 60, "update_cache": null, "deb": null, "default_release": null, "install_recommends": null, "policy_rc_d": null}}}\r\n', b'Shared connection to 192.168.1.201 closed.\r\n')
<192.168.1.201> ESTABLISH SSH CONNECTION FOR USER: piotr
<192.168.1.201> SSH: EXEC sshpass -d12 ssh -C -o ControlMaster=auto -o ControlPersist=60s -o 'User="piotr"' -o ConnectTimeout=10 -o 'ControlPath="/root/.ansible/cp/3baf2ea8c1"' 192.168.1.201 '/bin/sh -c '"'"'rm -f -r /home/piotr/.ansible/tmp/ansible-tmp-1713214002.847376-589-152904375812625/ > /dev/null 2>&1 && sleep 0'"'"''
<192.168.1.201> (0, b'', b'')
ok: [192.168.1.201] => (item=docker-compose) => {
    "ansible_loop_var": "item",
    "changed": false,
    "invocation": {
        "module_args": {
            "allow_change_held_packages": false,
            "allow_downgrade": false,
            "allow_unauthenticated": false,
            "autoclean": false,
            "autoremove": false,
            "cache_valid_time": 0,
            "clean": false,
            "deb": null,
            "default_release": null,
            "dpkg_options": "force-confdef,force-confold",
            "fail_on_autoremove": false,
            "force": false,
            "force_apt_get": false,
            "install_recommends": null,
            "lock_timeout": 60,
            "name": "docker-compose",
            "only_upgrade": false,
            "package": [
                "docker-compose"
            ],
            "policy_rc_d": null,
            "purge": false,
            "state": "absent",
            "update_cache": null,
            "update_cache_retries": 5,
            "update_cache_retry_max_delay": 12,
            "upgrade": null
        }
    },
    "item": "docker-compose"
}
<192.168.1.201> ESTABLISH SSH CONNECTION FOR USER: piotr
<192.168.1.201> SSH: EXEC sshpass -d12 ssh -C -o ControlMaster=auto -o ControlPersist=60s -o 'User="piotr"' -o ConnectTimeout=10 -o 'ControlPath="/root/.ansible/cp/3baf2ea8c1"' 192.168.1.201 '/bin/sh -c '"'"'echo ~piotr && sleep 0'"'"''
<192.168.1.201> (0, b'/home/piotr\n', b'')
<192.168.1.201> ESTABLISH SSH CONNECTION FOR USER: piotr
<192.168.1.201> SSH: EXEC sshpass -d12 ssh -C -o ControlMaster=auto -o ControlPersist=60s -o 'User="piotr"' -o ConnectTimeout=10 -o 'ControlPath="/root/.ansible/cp/3baf2ea8c1"' 192.168.1.201 '/bin/sh -c '"'"'( umask 77 && mkdir -p "` echo /home/piotr/.ansible/tmp `"&& mkdir "` echo /home/piotr/.ansible/tmp/ansible-tmp-1713214003.6901834-589-129003687213167 `" && echo ansible-tmp-1713214003.6901834-589-129003687213167="` echo /home/piotr/.ansible/tmp/ansible-tmp-1713214003.6901834-589-129003687213167 `" ) && sleep 0'"'"''
<192.168.1.201> (0, b'ansible-tmp-1713214003.6901834-589-129003687213167=/home/piotr/.ansible/tmp/ansible-tmp-1713214003.6901834-589-129003687213167\n', b'')
Using module file /usr/lib/python3/dist-packages/ansible/modules/apt.py
<192.168.1.201> PUT /root/.ansible/tmp/ansible-local-472ilie3vcr/tmp1wbvxy41 TO /home/piotr/.ansible/tmp/ansible-tmp-1713214003.6901834-589-129003687213167/AnsiballZ_apt.py
<192.168.1.201> SSH: EXEC sshpass -d12 sftp -o BatchMode=no -b - -C -o ControlMaster=auto -o ControlPersist=60s -o 'User="piotr"' -o ConnectTimeout=10 -o 'ControlPath="/root/.ansible/cp/3baf2ea8c1"' '[192.168.1.201]'
<192.168.1.201> (0, b'sftp> put /root/.ansible/tmp/ansible-local-472ilie3vcr/tmp1wbvxy41 /home/piotr/.ansible/tmp/ansible-tmp-1713214003.6901834-589-129003687213167/AnsiballZ_apt.py\n', b'')
<192.168.1.201> ESTABLISH SSH CONNECTION FOR USER: piotr
<192.168.1.201> SSH: EXEC sshpass -d12 ssh -C -o ControlMaster=auto -o ControlPersist=60s -o 'User="piotr"' -o ConnectTimeout=10 -o 'ControlPath="/root/.ansible/cp/3baf2ea8c1"' 192.168.1.201 '/bin/sh -c '"'"'chmod u+x /home/piotr/.ansible/tmp/ansible-tmp-1713214003.6901834-589-129003687213167/ /home/piotr/.ansible/tmp/ansible-tmp-1713214003.6901834-589-129003687213167/AnsiballZ_apt.py && sleep 0'"'"''
<192.168.1.201> (0, b'', b'')
<192.168.1.201> ESTABLISH SSH CONNECTION FOR USER: piotr
<192.168.1.201> SSH: EXEC sshpass -d12 ssh -C -o ControlMaster=auto -o ControlPersist=60s -o 'User="piotr"' -o ConnectTimeout=10 -o 'ControlPath="/root/.ansible/cp/3baf2ea8c1"' -tt 192.168.1.201 '/bin/sh -c '"'"'sudo -H -S -p "[sudo via ansible, key=nehiboygfadiavdywdeaofwttaepjioh] password:" -u root /bin/sh -c '"'"'"'"'"'"'"'"'echo BECOME-SUCCESS-nehiboygfadiavdywdeaofwttaepjioh ; /usr/bin/python3 /home/piotr/.ansible/tmp/ansible-tmp-1713214003.6901834-589-129003687213167/AnsiballZ_apt.py'"'"'"'"'"'"'"'"' && sleep 0'"'"''
Escalation succeeded
<192.168.1.201> (0, b'\r\n\r\n{"changed": false, "invocation": {"module_args": {"name": "docker-compose-v2", "state": "absent", "package": ["docker-compose-v2"], "update_cache_retries": 5, "update_cache_retry_max_delay": 12, "cache_valid_time": 0, "purge": false, "force": false, "upgrade": null, "dpkg_options": "force-confdef,force-confold", "autoremove": false, "autoclean": false, "fail_on_autoremove": false, "only_upgrade": false, "force_apt_get": false, "clean": false, "allow_unauthenticated": false, "allow_downgrade": false, "allow_change_held_packages": false, "lock_timeout": 60, "update_cache": null, "deb": null, "default_release": null, "install_recommends": null, "policy_rc_d": null}}}\r\n', b'Shared connection to 192.168.1.201 closed.\r\n')
<192.168.1.201> ESTABLISH SSH CONNECTION FOR USER: piotr
<192.168.1.201> SSH: EXEC sshpass -d12 ssh -C -o ControlMaster=auto -o ControlPersist=60s -o 'User="piotr"' -o ConnectTimeout=10 -o 'ControlPath="/root/.ansible/cp/3baf2ea8c1"' 192.168.1.201 '/bin/sh -c '"'"'rm -f -r /home/piotr/.ansible/tmp/ansible-tmp-1713214003.6901834-589-129003687213167/ > /dev/null 2>&1 && sleep 0'"'"''
<192.168.1.201> (0, b'', b'')
ok: [192.168.1.201] => (item=docker-compose-v2) => {
    "ansible_loop_var": "item",
    "changed": false,
    "invocation": {
        "module_args": {
            "allow_change_held_packages": false,
            "allow_downgrade": false,
            "allow_unauthenticated": false,
            "autoclean": false,
            "autoremove": false,
            "cache_valid_time": 0,
            "clean": false,
            "deb": null,
            "default_release": null,
            "dpkg_options": "force-confdef,force-confold",
            "fail_on_autoremove": false,
            "force": false,
            "force_apt_get": false,
            "install_recommends": null,
            "lock_timeout": 60,
            "name": "docker-compose-v2",
            "only_upgrade": false,
            "package": [
                "docker-compose-v2"
            ],
            "policy_rc_d": null,
            "purge": false,
            "state": "absent",
            "update_cache": null,
            "update_cache_retries": 5,
            "update_cache_retry_max_delay": 12,
            "upgrade": null
        }
    },
    "item": "docker-compose-v2"
}
<192.168.1.201> ESTABLISH SSH CONNECTION FOR USER: piotr
<192.168.1.201> SSH: EXEC sshpass -d12 ssh -C -o ControlMaster=auto -o ControlPersist=60s -o 'User="piotr"' -o ConnectTimeout=10 -o 'ControlPath="/root/.ansible/cp/3baf2ea8c1"' 192.168.1.201 '/bin/sh -c '"'"'echo ~piotr && sleep 0'"'"''
<192.168.1.201> (0, b'/home/piotr\n', b'')
<192.168.1.201> ESTABLISH SSH CONNECTION FOR USER: piotr
<192.168.1.201> SSH: EXEC sshpass -d12 ssh -C -o ControlMaster=auto -o ControlPersist=60s -o 'User="piotr"' -o ConnectTimeout=10 -o 'ControlPath="/root/.ansible/cp/3baf2ea8c1"' 192.168.1.201 '/bin/sh -c '"'"'( umask 77 && mkdir -p "` echo /home/piotr/.ansible/tmp `"&& mkdir "` echo /home/piotr/.ansible/tmp/ansible-tmp-1713214004.570681-589-204839787265640 `" && echo ansible-tmp-1713214004.570681-589-204839787265640="` echo /home/piotr/.ansible/tmp/ansible-tmp-1713214004.570681-589-204839787265640 `" ) && sleep 0'"'"''
<192.168.1.201> (0, b'ansible-tmp-1713214004.570681-589-204839787265640=/home/piotr/.ansible/tmp/ansible-tmp-1713214004.570681-589-204839787265640\n', b'')
Using module file /usr/lib/python3/dist-packages/ansible/modules/apt.py
<192.168.1.201> PUT /root/.ansible/tmp/ansible-local-472ilie3vcr/tmpfbdlmse_ TO /home/piotr/.ansible/tmp/ansible-tmp-1713214004.570681-589-204839787265640/AnsiballZ_apt.py
<192.168.1.201> SSH: EXEC sshpass -d12 sftp -o BatchMode=no -b - -C -o ControlMaster=auto -o ControlPersist=60s -o 'User="piotr"' -o ConnectTimeout=10 -o 'ControlPath="/root/.ansible/cp/3baf2ea8c1"' '[192.168.1.201]'
<192.168.1.201> (0, b'sftp> put /root/.ansible/tmp/ansible-local-472ilie3vcr/tmpfbdlmse_ /home/piotr/.ansible/tmp/ansible-tmp-1713214004.570681-589-204839787265640/AnsiballZ_apt.py\n', b'')
<192.168.1.201> ESTABLISH SSH CONNECTION FOR USER: piotr
<192.168.1.201> SSH: EXEC sshpass -d12 ssh -C -o ControlMaster=auto -o ControlPersist=60s -o 'User="piotr"' -o ConnectTimeout=10 -o 'ControlPath="/root/.ansible/cp/3baf2ea8c1"' 192.168.1.201 '/bin/sh -c '"'"'chmod u+x /home/piotr/.ansible/tmp/ansible-tmp-1713214004.570681-589-204839787265640/ /home/piotr/.ansible/tmp/ansible-tmp-1713214004.570681-589-204839787265640/AnsiballZ_apt.py && sleep 0'"'"''
<192.168.1.201> (0, b'', b'')
<192.168.1.201> ESTABLISH SSH CONNECTION FOR USER: piotr
<192.168.1.201> SSH: EXEC sshpass -d12 ssh -C -o ControlMaster=auto -o ControlPersist=60s -o 'User="piotr"' -o ConnectTimeout=10 -o 'ControlPath="/root/.ansible/cp/3baf2ea8c1"' -tt 192.168.1.201 '/bin/sh -c '"'"'sudo -H -S -p "[sudo via ansible, key=jxsdspkdusuwevoiwdgbsnvyxwfdhqna] password:" -u root /bin/sh -c '"'"'"'"'"'"'"'"'echo BECOME-SUCCESS-jxsdspkdusuwevoiwdgbsnvyxwfdhqna ; /usr/bin/python3 /home/piotr/.ansible/tmp/ansible-tmp-1713214004.570681-589-204839787265640/AnsiballZ_apt.py'"'"'"'"'"'"'"'"' && sleep 0'"'"''
Escalation succeeded
<192.168.1.201> (0, b'\r\n\r\n{"changed": false, "invocation": {"module_args": {"name": "podman-docker", "state": "absent", "package": ["podman-docker"], "update_cache_retries": 5, "update_cache_retry_max_delay": 12, "cache_valid_time": 0, "purge": false, "force": false, "upgrade": null, "dpkg_options": "force-confdef,force-confold", "autoremove": false, "autoclean": false, "fail_on_autoremove": false, "only_upgrade": false, "force_apt_get": false, "clean": false, "allow_unauthenticated": false, "allow_downgrade": false, "allow_change_held_packages": false, "lock_timeout": 60, "update_cache": null, "deb": null, "default_release": null, "install_recommends": null, "policy_rc_d": null}}}\r\n', b'Shared connection to 192.168.1.201 closed.\r\n')
<192.168.1.201> ESTABLISH SSH CONNECTION FOR USER: piotr
<192.168.1.201> SSH: EXEC sshpass -d12 ssh -C -o ControlMaster=auto -o ControlPersist=60s -o 'User="piotr"' -o ConnectTimeout=10 -o 'ControlPath="/root/.ansible/cp/3baf2ea8c1"' 192.168.1.201 '/bin/sh -c '"'"'rm -f -r /home/piotr/.ansible/tmp/ansible-tmp-1713214004.570681-589-204839787265640/ > /dev/null 2>&1 && sleep 0'"'"''
<192.168.1.201> (0, b'', b'')
ok: [192.168.1.201] => (item=podman-docker) => {
    "ansible_loop_var": "item",
    "changed": false,
    "invocation": {
        "module_args": {
            "allow_change_held_packages": false,
            "allow_downgrade": false,
            "allow_unauthenticated": false,
            "autoclean": false,
            "autoremove": false,
            "cache_valid_time": 0,
            "clean": false,
            "deb": null,
            "default_release": null,
            "dpkg_options": "force-confdef,force-confold",
            "fail_on_autoremove": false,
            "force": false,
            "force_apt_get": false,
            "install_recommends": null,
            "lock_timeout": 60,
            "name": "podman-docker",
            "only_upgrade": false,
            "package": [
                "podman-docker"
            ],
            "policy_rc_d": null,
            "purge": false,
            "state": "absent",
            "update_cache": null,
            "update_cache_retries": 5,
            "update_cache_retry_max_delay": 12,
            "upgrade": null
        }
    },
    "item": "podman-docker"
}
<192.168.1.201> ESTABLISH SSH CONNECTION FOR USER: piotr
<192.168.1.201> SSH: EXEC sshpass -d12 ssh -C -o ControlMaster=auto -o ControlPersist=60s -o 'User="piotr"' -o ConnectTimeout=10 -o 'ControlPath="/root/.ansible/cp/3baf2ea8c1"' 192.168.1.201 '/bin/sh -c '"'"'echo ~piotr && sleep 0'"'"''
<192.168.1.201> (0, b'/home/piotr\n', b'')
<192.168.1.201> ESTABLISH SSH CONNECTION FOR USER: piotr
<192.168.1.201> SSH: EXEC sshpass -d12 ssh -C -o ControlMaster=auto -o ControlPersist=60s -o 'User="piotr"' -o ConnectTimeout=10 -o 'ControlPath="/root/.ansible/cp/3baf2ea8c1"' 192.168.1.201 '/bin/sh -c '"'"'( umask 77 && mkdir -p "` echo /home/piotr/.ansible/tmp `"&& mkdir "` echo /home/piotr/.ansible/tmp/ansible-tmp-1713214005.410909-589-19699699323951 `" && echo ansible-tmp-1713214005.410909-589-19699699323951="` echo /home/piotr/.ansible/tmp/ansible-tmp-1713214005.410909-589-19699699323951 `" ) && sleep 0'"'"''
<192.168.1.201> (0, b'ansible-tmp-1713214005.410909-589-19699699323951=/home/piotr/.ansible/tmp/ansible-tmp-1713214005.410909-589-19699699323951\n', b'')
Using module file /usr/lib/python3/dist-packages/ansible/modules/apt.py
<192.168.1.201> PUT /root/.ansible/tmp/ansible-local-472ilie3vcr/tmpxs71okh6 TO /home/piotr/.ansible/tmp/ansible-tmp-1713214005.410909-589-19699699323951/AnsiballZ_apt.py
<192.168.1.201> SSH: EXEC sshpass -d12 sftp -o BatchMode=no -b - -C -o ControlMaster=auto -o ControlPersist=60s -o 'User="piotr"' -o ConnectTimeout=10 -o 'ControlPath="/root/.ansible/cp/3baf2ea8c1"' '[192.168.1.201]'
<192.168.1.201> (0, b'sftp> put /root/.ansible/tmp/ansible-local-472ilie3vcr/tmpxs71okh6 /home/piotr/.ansible/tmp/ansible-tmp-1713214005.410909-589-19699699323951/AnsiballZ_apt.py\n', b'')
<192.168.1.201> ESTABLISH SSH CONNECTION FOR USER: piotr
<192.168.1.201> SSH: EXEC sshpass -d12 ssh -C -o ControlMaster=auto -o ControlPersist=60s -o 'User="piotr"' -o ConnectTimeout=10 -o 'ControlPath="/root/.ansible/cp/3baf2ea8c1"' 192.168.1.201 '/bin/sh -c '"'"'chmod u+x /home/piotr/.ansible/tmp/ansible-tmp-1713214005.410909-589-19699699323951/ /home/piotr/.ansible/tmp/ansible-tmp-1713214005.410909-589-19699699323951/AnsiballZ_apt.py && sleep 0'"'"''
<192.168.1.201> (0, b'', b'')
<192.168.1.201> ESTABLISH SSH CONNECTION FOR USER: piotr
<192.168.1.201> SSH: EXEC sshpass -d12 ssh -C -o ControlMaster=auto -o ControlPersist=60s -o 'User="piotr"' -o ConnectTimeout=10 -o 'ControlPath="/root/.ansible/cp/3baf2ea8c1"' -tt 192.168.1.201 '/bin/sh -c '"'"'sudo -H -S -p "[sudo via ansible, key=tuyqfwldxhxcfljwiyoyljnqhsmelcex] password:" -u root /bin/sh -c '"'"'"'"'"'"'"'"'echo BECOME-SUCCESS-tuyqfwldxhxcfljwiyoyljnqhsmelcex ; /usr/bin/python3 /home/piotr/.ansible/tmp/ansible-tmp-1713214005.410909-589-19699699323951/AnsiballZ_apt.py'"'"'"'"'"'"'"'"' && sleep 0'"'"''
Escalation succeeded
<192.168.1.201> (0, b'\r\n\r\n{"changed": false, "invocation": {"module_args": {"name": "containerd", "state": "absent", "package": ["containerd"], "update_cache_retries": 5, "update_cache_retry_max_delay": 12, "cache_valid_time": 0, "purge": false, "force": false, "upgrade": null, "dpkg_options": "force-confdef,force-confold", "autoremove": false, "autoclean": false, "fail_on_autoremove": false, "only_upgrade": false, "force_apt_get": false, "clean": false, "allow_unauthenticated": false, "allow_downgrade": false, "allow_change_held_packages": false, "lock_timeout": 60, "update_cache": null, "deb": null, "default_release": null, "install_recommends": null, "policy_rc_d": null}}}\r\n', b'Shared connection to 192.168.1.201 closed.\r\n')
<192.168.1.201> ESTABLISH SSH CONNECTION FOR USER: piotr
<192.168.1.201> SSH: EXEC sshpass -d12 ssh -C -o ControlMaster=auto -o ControlPersist=60s -o 'User="piotr"' -o ConnectTimeout=10 -o 'ControlPath="/root/.ansible/cp/3baf2ea8c1"' 192.168.1.201 '/bin/sh -c '"'"'rm -f -r /home/piotr/.ansible/tmp/ansible-tmp-1713214005.410909-589-19699699323951/ > /dev/null 2>&1 && sleep 0'"'"''
<192.168.1.201> (0, b'', b'')
ok: [192.168.1.201] => (item=containerd) => {
    "ansible_loop_var": "item",
    "changed": false,
    "invocation": {
        "module_args": {
            "allow_change_held_packages": false,
            "allow_downgrade": false,
            "allow_unauthenticated": false,
            "autoclean": false,
            "autoremove": false,
            "cache_valid_time": 0,
            "clean": false,
            "deb": null,
            "default_release": null,
            "dpkg_options": "force-confdef,force-confold",
            "fail_on_autoremove": false,
            "force": false,
            "force_apt_get": false,
            "install_recommends": null,
            "lock_timeout": 60,
            "name": "containerd",
            "only_upgrade": false,
            "package": [
                "containerd"
            ],
            "policy_rc_d": null,
            "purge": false,
            "state": "absent",
            "update_cache": null,
            "update_cache_retries": 5,
            "update_cache_retry_max_delay": 12,
            "upgrade": null
        }
    },
    "item": "containerd"
}
<192.168.1.201> ESTABLISH SSH CONNECTION FOR USER: piotr
<192.168.1.201> SSH: EXEC sshpass -d12 ssh -C -o ControlMaster=auto -o ControlPersist=60s -o 'User="piotr"' -o ConnectTimeout=10 -o 'ControlPath="/root/.ansible/cp/3baf2ea8c1"' 192.168.1.201 '/bin/sh -c '"'"'echo ~piotr && sleep 0'"'"''
<192.168.1.201> (0, b'/home/piotr\n', b'')
<192.168.1.201> ESTABLISH SSH CONNECTION FOR USER: piotr
<192.168.1.201> SSH: EXEC sshpass -d12 ssh -C -o ControlMaster=auto -o ControlPersist=60s -o 'User="piotr"' -o ConnectTimeout=10 -o 'ControlPath="/root/.ansible/cp/3baf2ea8c1"' 192.168.1.201 '/bin/sh -c '"'"'( umask 77 && mkdir -p "` echo /home/piotr/.ansible/tmp `"&& mkdir "` echo /home/piotr/.ansible/tmp/ansible-tmp-1713214006.2655737-589-159093153533952 `" && echo ansible-tmp-1713214006.2655737-589-159093153533952="` echo /home/piotr/.ansible/tmp/ansible-tmp-1713214006.2655737-589-159093153533952 `" ) && sleep 0'"'"''
<192.168.1.201> (0, b'ansible-tmp-1713214006.2655737-589-159093153533952=/home/piotr/.ansible/tmp/ansible-tmp-1713214006.2655737-589-159093153533952\n', b'')
Using module file /usr/lib/python3/dist-packages/ansible/modules/apt.py
<192.168.1.201> PUT /root/.ansible/tmp/ansible-local-472ilie3vcr/tmprmc7mk91 TO /home/piotr/.ansible/tmp/ansible-tmp-1713214006.2655737-589-159093153533952/AnsiballZ_apt.py
<192.168.1.201> SSH: EXEC sshpass -d12 sftp -o BatchMode=no -b - -C -o ControlMaster=auto -o ControlPersist=60s -o 'User="piotr"' -o ConnectTimeout=10 -o 'ControlPath="/root/.ansible/cp/3baf2ea8c1"' '[192.168.1.201]'
<192.168.1.201> (0, b'sftp> put /root/.ansible/tmp/ansible-local-472ilie3vcr/tmprmc7mk91 /home/piotr/.ansible/tmp/ansible-tmp-1713214006.2655737-589-159093153533952/AnsiballZ_apt.py\n', b'')
<192.168.1.201> ESTABLISH SSH CONNECTION FOR USER: piotr
<192.168.1.201> SSH: EXEC sshpass -d12 ssh -C -o ControlMaster=auto -o ControlPersist=60s -o 'User="piotr"' -o ConnectTimeout=10 -o 'ControlPath="/root/.ansible/cp/3baf2ea8c1"' 192.168.1.201 '/bin/sh -c '"'"'chmod u+x /home/piotr/.ansible/tmp/ansible-tmp-1713214006.2655737-589-159093153533952/ /home/piotr/.ansible/tmp/ansible-tmp-1713214006.2655737-589-159093153533952/AnsiballZ_apt.py && sleep 0'"'"''
<192.168.1.201> (0, b'', b'')
<192.168.1.201> ESTABLISH SSH CONNECTION FOR USER: piotr
<192.168.1.201> SSH: EXEC sshpass -d12 ssh -C -o ControlMaster=auto -o ControlPersist=60s -o 'User="piotr"' -o ConnectTimeout=10 -o 'ControlPath="/root/.ansible/cp/3baf2ea8c1"' -tt 192.168.1.201 '/bin/sh -c '"'"'sudo -H -S -p "[sudo via ansible, key=odataeziozbtztxzkufmmasqmlrdrzkk] password:" -u root /bin/sh -c '"'"'"'"'"'"'"'"'echo BECOME-SUCCESS-odataeziozbtztxzkufmmasqmlrdrzkk ; /usr/bin/python3 /home/piotr/.ansible/tmp/ansible-tmp-1713214006.2655737-589-159093153533952/AnsiballZ_apt.py'"'"'"'"'"'"'"'"' && sleep 0'"'"''
Escalation succeeded
<192.168.1.201> (0, b'\r\n\r\n{"changed": false, "invocation": {"module_args": {"name": "runc", "state": "absent", "package": ["runc"], "update_cache_retries": 5, "update_cache_retry_max_delay": 12, "cache_valid_time": 0, "purge": false, "force": false, "upgrade": null, "dpkg_options": "force-confdef,force-confold", "autoremove": false, "autoclean": false, "fail_on_autoremove": false, "only_upgrade": false, "force_apt_get": false, "clean": false, "allow_unauthenticated": false, "allow_downgrade": false, "allow_change_held_packages": false, "lock_timeout": 60, "update_cache": null, "deb": null, "default_release": null, "install_recommends": null, "policy_rc_d": null}}}\r\n', b'Shared connection to 192.168.1.201 closed.\r\n')
<192.168.1.201> ESTABLISH SSH CONNECTION FOR USER: piotr
<192.168.1.201> SSH: EXEC sshpass -d12 ssh -C -o ControlMaster=auto -o ControlPersist=60s -o 'User="piotr"' -o ConnectTimeout=10 -o 'ControlPath="/root/.ansible/cp/3baf2ea8c1"' 192.168.1.201 '/bin/sh -c '"'"'rm -f -r /home/piotr/.ansible/tmp/ansible-tmp-1713214006.2655737-589-159093153533952/ > /dev/null 2>&1 && sleep 0'"'"''
<192.168.1.201> (0, b'', b'')
ok: [192.168.1.201] => (item=runc) => {
    "ansible_loop_var": "item",
    "changed": false,
    "invocation": {
        "module_args": {
            "allow_change_held_packages": false,
            "allow_downgrade": false,
            "allow_unauthenticated": false,
            "autoclean": false,
            "autoremove": false,
            "cache_valid_time": 0,
            "clean": false,
            "deb": null,
            "default_release": null,
            "dpkg_options": "force-confdef,force-confold",
            "fail_on_autoremove": false,
            "force": false,
            "force_apt_get": false,
            "install_recommends": null,
            "lock_timeout": 60,
            "name": "runc",
            "only_upgrade": false,
            "package": [
                "runc"
            ],
            "policy_rc_d": null,
            "purge": false,
            "state": "absent",
            "update_cache": null,
            "update_cache_retries": 5,
            "update_cache_retry_max_delay": 12,
            "upgrade": null
        }
    },
    "item": "runc"
}

TASK [Install ca-certificates and curl] ****************************************
task path: /mnt/ansible/ansible-install-ha.yaml:50
<192.168.1.201> ESTABLISH SSH CONNECTION FOR USER: piotr
<192.168.1.201> SSH: EXEC sshpass -d12 ssh -C -o ControlMaster=auto -o ControlPersist=60s -o 'User="piotr"' -o ConnectTimeout=10 -o 'ControlPath="/root/.ansible/cp/3baf2ea8c1"' 192.168.1.201 '/bin/sh -c '"'"'echo ~piotr && sleep 0'"'"''
<192.168.1.201> (0, b'/home/piotr\n', b'')
<192.168.1.201> ESTABLISH SSH CONNECTION FOR USER: piotr
<192.168.1.201> SSH: EXEC sshpass -d12 ssh -C -o ControlMaster=auto -o ControlPersist=60s -o 'User="piotr"' -o ConnectTimeout=10 -o 'ControlPath="/root/.ansible/cp/3baf2ea8c1"' 192.168.1.201 '/bin/sh -c '"'"'( umask 77 && mkdir -p "` echo /home/piotr/.ansible/tmp `"&& mkdir "` echo /home/piotr/.ansible/tmp/ansible-tmp-1713214007.1510253-682-196381674555517 `" && echo ansible-tmp-1713214007.1510253-682-196381674555517="` echo /home/piotr/.ansible/tmp/ansible-tmp-1713214007.1510253-682-196381674555517 `" ) && sleep 0'"'"''
<192.168.1.201> (0, b'ansible-tmp-1713214007.1510253-682-196381674555517=/home/piotr/.ansible/tmp/ansible-tmp-1713214007.1510253-682-196381674555517\n', b'')
Using module file /usr/lib/python3/dist-packages/ansible/modules/apt.py
<192.168.1.201> PUT /root/.ansible/tmp/ansible-local-472ilie3vcr/tmpe26g_4aq TO /home/piotr/.ansible/tmp/ansible-tmp-1713214007.1510253-682-196381674555517/AnsiballZ_apt.py
<192.168.1.201> SSH: EXEC sshpass -d12 sftp -o BatchMode=no -b - -C -o ControlMaster=auto -o ControlPersist=60s -o 'User="piotr"' -o ConnectTimeout=10 -o 'ControlPath="/root/.ansible/cp/3baf2ea8c1"' '[192.168.1.201]'
<192.168.1.201> (0, b'sftp> put /root/.ansible/tmp/ansible-local-472ilie3vcr/tmpe26g_4aq /home/piotr/.ansible/tmp/ansible-tmp-1713214007.1510253-682-196381674555517/AnsiballZ_apt.py\n', b'')
<192.168.1.201> ESTABLISH SSH CONNECTION FOR USER: piotr
<192.168.1.201> SSH: EXEC sshpass -d12 ssh -C -o ControlMaster=auto -o ControlPersist=60s -o 'User="piotr"' -o ConnectTimeout=10 -o 'ControlPath="/root/.ansible/cp/3baf2ea8c1"' 192.168.1.201 '/bin/sh -c '"'"'chmod u+x /home/piotr/.ansible/tmp/ansible-tmp-1713214007.1510253-682-196381674555517/ /home/piotr/.ansible/tmp/ansible-tmp-1713214007.1510253-682-196381674555517/AnsiballZ_apt.py && sleep 0'"'"''
<192.168.1.201> (0, b'', b'')
<192.168.1.201> ESTABLISH SSH CONNECTION FOR USER: piotr
<192.168.1.201> SSH: EXEC sshpass -d12 ssh -C -o ControlMaster=auto -o ControlPersist=60s -o 'User="piotr"' -o ConnectTimeout=10 -o 'ControlPath="/root/.ansible/cp/3baf2ea8c1"' -tt 192.168.1.201 '/bin/sh -c '"'"'sudo -H -S -p "[sudo via ansible, key=kfcoevitvlcnyirqxmnqrlrmnfalhmpw] password:" -u root /bin/sh -c '"'"'"'"'"'"'"'"'echo BECOME-SUCCESS-kfcoevitvlcnyirqxmnqrlrmnfalhmpw ; /usr/bin/python3 /home/piotr/.ansible/tmp/ansible-tmp-1713214007.1510253-682-196381674555517/AnsiballZ_apt.py'"'"'"'"'"'"'"'"' && sleep 0'"'"''
Escalation succeeded
