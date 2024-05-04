FROM ruby:3.2.0

RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir /app

WORKDIR /app

COPY Gemfile Gemfile.lock ./
RUN bundle install

COPY . .
