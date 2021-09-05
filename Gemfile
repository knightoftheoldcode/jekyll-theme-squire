# frozen_string_literal: true

source "https://rubygems.org"
gemspec

gem "jekyll", ENV["JEKYLL_VERSION"] if ENV["JEKYLL_VERSION"]
gem "kramdown-parser-gfm" if ENV["JEKYLL_VERSION"] == "~> 3.9"

# Ruby 3.0 doesn't include webrick by default
# https://github.com/jekyll/jekyll/issues/8523
gem "webrick", "~> 1.7"
