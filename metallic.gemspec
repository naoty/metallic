# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'metallic/version'

Gem::Specification.new do |spec|
  spec.name          = "metallic"
  spec.version       = Metallic::VERSION
  spec.authors       = ["Naoto Kaneko"]
  spec.email         = ["naoty.k@gmail.com"]
  spec.summary       = %q{Micro backend API template}
  spec.description   = %q{Metallic is Micro backend API template.}
  spec.homepage      = "https://github.com/naoty/metallic"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "thor", "~> 0.19.1"
  spec.add_dependency "sinatra", "~> 1.4.5"
  spec.add_dependency "activesupport", "~> 4.1.4"

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
end
