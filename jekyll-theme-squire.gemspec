# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name          = "jekyll-theme-squire"
  spec.version       = "0.1.2"
  spec.authors       = ["Curtis Spendlove"]
  spec.email         = ["curtis.spendlove@knightoftheoldcode.com"]

  spec.summary       = "This is an open-source jekyll theme. It is powering knightoftheoldcode.com."
  spec.homepage      = "https://github.com/knightoftheoldcode/jekyll-theme-squire"
  spec.license       = "MIT"

  spec.metadata["plugin_type"] = "theme"

  spec.files = `git ls-files -z`.split("\x0").select do |f|
    f.match(%r!^(assets|_(includes|layouts|sass)/|(LICENSE|README)((\.(txt|md|markdown)|$)))!i)
  end

  spec.add_runtime_dependency "jekyll", "~> 3.8"
  spec.add_runtime_dependency "jekyll-feed", "~> 0.9"
  spec.add_runtime_dependency "jekyll-seo-tag", "~> 2.1"

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 12.0"
end
