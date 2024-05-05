FROM ubuntu:latest

# Set the default geographic area and city to avoid interactive prompts
ARG DEBIAN_FRONTEND=noninteractive
ENV TZ=UTC

RUN apt-get update && \
    apt-get install -y software-properties-common && \
    add-apt-repository -y ppa:deadsnakes/ppa && \
    apt-get update && \
    apt-get install -y python3.10 python3-pip && \
    pip3 install --upgrade pip && \
    pip3 install shell-gpt

# Dodanie klucza API
ENV OPENAI_API_KEY="{{ lookup('env', 'SGPT_API_TOKEN') }}"
#ENV OPENAI_API_KEY=${{ secrets.SGPT_API_TOKEN }}

# Uruchomienie SGPT Chat
# CMD ["sgpt", "test"]
# ENTRYPOINT ["tail", "-f", "/dev/null"]