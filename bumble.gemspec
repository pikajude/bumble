# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'bumble/version'

Gem::Specification.new do |spec|
  spec.name          = "bumble"
  spec.version       = Bumble::VERSION
  spec.authors       = ["Joel Taylor"]
  spec.email         = ["joel@outright.com"]
  spec.description   = %q{bumble gives you suggestions as to what you should've done while you were waiting for bundler to finish.}
  spec.summary       = %q{bumble gives you suggestions as to what you should've done while you were waiting for bundler to finish.}
  spec.homepage      = "https://github.com/joelteon/bumble"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
