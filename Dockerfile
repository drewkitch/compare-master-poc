FROM ubuntu

RUN apt-get update && apt-get install -y ssh git-all

RUN mkdir -p /master-branch-app
COPY ./compare-master.sh ./master-branch-app/compare-master.sh
COPY ./.git /master-branch-app/.git

WORKDIR /app
