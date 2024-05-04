# Use a base image, for example, Ubuntu
FROM mcr.microsoft.com/powershell

# Set the default geographic area and city to avoid interactive prompts
ARG DEBIAN_FRONTEND=noninteractive
ENV TZ=UTC

# Update package lists and install dependencies
RUN apt-get update && apt-get install -y cron

# Create crone job
#RUN echo "*/2 * * * * /opt/microsoft/powershell/7/pwsh /mnt/clausius_PS7.ps1 >> /var/log/cron.log 2>&1" | crontab -
RUN echo "*/2 * * * * /opt/microsoft/powershell/7/pwsh /mnt/clausius_PS7.ps1 " | crontab -

# Copy your script into the image
COPY clausius_PS7.ps1 /mnt/clausius_PS7.ps1

# Give execution rights on the cron job script
RUN chmod +x /mnt/clausius_PS7.ps1

# Create the log file to be able to run tail
RUN touch /var/log/cron.log

# Run the command on container startup
CMD cron && tail -f /var/log/cron.log