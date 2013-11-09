# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'textmarketer/version'

Gem::Specification.new do |spec|
  spec.name          = "textmarketer"
  spec.version       = Textmarketer::VERSION
  spec.authors       = ["Michael Bulpitt"]
  spec.email         = ["michael@kashoo.co.uk"]
  spec.description   = "A ruby wrapper for TextMarketer API."
  spec.summary       = "A ruby wrapper for TextMarketer API."
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
