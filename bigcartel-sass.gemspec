lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'bigcartel-sass/version'

Gem::Specification.new do |spec|
  spec.name          = "bigcartel-sass"
  spec.version       = Bigcartel::Sass::VERSION
  spec.authors       = ["Big Cartel"]
  spec.email         = ["dev@bigcartel.com"]
  spec.description   = %q{Sass variables and mixins for Big Cartel front-end development}
  spec.summary       = %q{Sass variables and mixins for Big Cartel front-end development}
  spec.homepage      = "https://github.com/bigcartel/bigcartel-sass"
  spec.license       = "MIT"
  spec.has_rdoc      = false

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency 'sass-rails', '>= 3.2'
  spec.add_runtime_dependency "sass"

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
