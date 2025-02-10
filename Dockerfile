FROM docker/whalesay:latest
LABEL Name=theandromedaproject Version=0.0.1
RUN apt-get -y update && apt-get install -y fortunes && rm -rf /var/lib/apt/lists/*
CMD ["sh", "-c", "/usr/games/fortune -a | cowsay"]
