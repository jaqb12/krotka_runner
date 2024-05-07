FROM ubuntu:latest

# Set the default geographic area and city to avoid interactive prompts
ARG DEBIAN_FRONTEND=noninteractive
ENV TZ=UTC

# RUN apt-get update && \
#     apt-get install -y software-properties-common && \
#     add-apt-repository -y ppa:deadsnakes/ppa && \
#     apt-get update && \
#     apt-get install -y python3.10 python3-pip

# RUN pip3 install --upgrade pip --break-system-packages
# RUN pip3 install shell-gpt --break-system-packages

# Dodanie klucza API
ENV OPENAI_API_KEY=$SGPT_API_TOKEN
ENV OPENAI_API_KEY2="${{ SGPT_API_TOKEN }}"

#ENV OPENAI_API_KEY=${{ secrets.SGPT_API_TOKEN }}

#CMD /bin/bash
#CMD [". /sgpt/bin/activate", "sgpt"]
# ENTRYPOINT ["tail", "-f", "/dev/null"]

# Create the log file to be able to run tail
RUN touch /var/log/foo.log

# Run the command on container startup
CMD tail -f /var/log/foo.log