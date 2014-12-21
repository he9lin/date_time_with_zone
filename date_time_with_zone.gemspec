# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'date_time_with_zone/version'

Gem::Specification.new do |spec|
  spec.name          = "date_time_with_zone"
  spec.version       = DateTimeWithZone::VERSION
  spec.authors       = ["Lin He"]
  spec.email         = ["he9lin@gmail.com"]
  spec.summary       = %q{Help deal with datetime with zones.}
  spec.description   = %q{Help deal with datetime with zones.}
  spec.homepage      = "https://github.com/he9lin/date_time_with_zone"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "activesupport", ">= 3.1.2"
  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec", "~> 3.1.0"
end
