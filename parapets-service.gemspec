# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'parapets/service/version'

Gem::Specification.new do |spec|
  spec.name          = "parapets-service"
  spec.version       = Parapets::Service::Version::STRING
  spec.authors       = ["Seba Gamboa"]
  spec.email         = ["me@sagmor.com"]
  spec.summary       = %q{Service arquitecture design framework}
  spec.description   = %q{A Parapet Service sets a couple defaults for building services.}
  spec.homepage      = "https://github.com/parapets/parapets-service"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "parapets-railties"

  spec.add_development_dependency "rspec", '3.0.0.beta2'
end
