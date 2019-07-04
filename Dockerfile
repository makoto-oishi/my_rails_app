FROM ruby:2.5.3-alpine

RUN \
apk add --no-cache --virtual build-dependencies --update \
    build-base \
    linux-headers \
    mariadb-client \
    mariadb-dev \
    tzdata \
    nodejs \
    yarn

ARG RAILS_ENV

ENV APP_ROOT /app

RUN mkdir ${APP_ROOT}

WORKDIR ${APP_ROOT}

ADD ./app/Gemfile Gemfile
ADD ./app/Gemfile.lock Gemfile.lock

RUN \
bundle install

ADD app ${APP_ROOT}

EXPOSE 3000

ENTRYPOINT ["/bin/sh", "-c","/app/script/entrypoint_${RAILS_ENV}.sh" ]
