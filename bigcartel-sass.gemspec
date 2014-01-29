# coding: utf-8
require File.expand_path('../lib/bigcartel-sass/version', __FILE__)

Gem::Specification.new do |spec|
  spec.name        = 'bigcartel-sass'
  spec.version     = BigCartel::Sass::VERSION
  spec.authors       = ["Blake Walters"]
  spec.email         = ["blake@bigcartel.com"]
  spec.description   = %q{Sass variables and mixins for Big Cartel front-end development}
  spec.summary       = %q{Sass variables and mixins for Big Cartel front-end development}
  spec.homepage      = ""
  spec.license       = "MIT"
  spec.files         = `git ls-files`.split($/)
  spec.require_paths = ['lib']

  spec.add_dependency "sass", "~> 3.1"
  spec.add_dependency "compass", "~> 0.12.2"
  spec.add_development_dependency "bundler", "~> 1.3"
end
