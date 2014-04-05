# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'parapets/service/version'

Gem::Specification.new do |spec|
  spec.name          = "parapets-service"
  spec.version       = Parapets::Service::Version::STRING
  spec.authors       = ["Seba Gamboa"]
  spec.email         = ["me@sagmor.com"]
  spec.summary       = %q{TODO: Write a short summary. Required.}
  spec.description   = %q{TODO: Write a longer description. Optional.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "multi_json", "~> 1.9.2"
  spec.add_dependency "railties", "~> 4.0.4"
  spec.add_dependency "rake"

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rspec"
end
