FROM ubuntu

RUN apt-get update && apt-get install -y ssh git-all
WORKDIR /app
COPY ./.git /app/.git
