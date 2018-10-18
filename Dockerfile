FROM alpine:latest

LABEL maintainer="gokhan@gokhansari.me"

WORKDIR  /

# install packages
RUN apk update \
    && apk add findutils bash curl jq ruby ruby-rdoc

# install papertrail cli gem
RUN gem install papertrail

COPY docker-entrypoint.sh docker-entrypoint.sh
RUN chmod +x docker-entrypoint.sh

ENTRYPOINT ["/docker-entrypoint.sh"]