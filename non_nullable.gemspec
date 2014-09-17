# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'non_nullable/version'

Gem::Specification.new do |spec|
  spec.name          = "non_nullable"
  spec.version       = NonNullable::VERSION
  spec.authors       = ["Lukas Alexandre\n"]
  spec.email         = ["lukas@codelogic.me"]
  spec.summary       = %q{Avoids nil returns on specified Ruby methods}
  spec.homepage      = "https://github.com/lukelex/non_nullable"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
end
