FROM ruby:2.6
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir /appname
WORKDIR /appname
COPY Gemfile /appname/Gemfile
COPY Gemfile.lock /appname/Gemfile.lock
COPY jekyll-theme-squire.gemspec /appname/jekyll-theme-squire.gemspec
RUN bundle install
COPY . /appname
