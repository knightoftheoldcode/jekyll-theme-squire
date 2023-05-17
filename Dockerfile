FROM ruby:3.0

LABEL maintainer="curtis.spendlove@knightoftheoldcode.dev"

RUN apt-get update -yqq && \
    apt-get install -yqq --no-install-recommends \
    build-essential \
    libpq-dev \
    nodejs

RUN mkdir /usr/src/theme

COPY Gemfile* /usr/src/theme
COPY jekyll-theme-squire.gemspec /usr/src/theme/jekyll-theme-squire.gemspec
WORKDIR /usr/src/theme
RUN bundle install

COPY . /usr/src/theme/

CMD [ "jekyll", "serve", "--host=0.0.0.0" ]
