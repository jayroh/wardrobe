# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'black_ipa/version'

Gem::Specification.new do |spec|
  spec.name          = 'black_ipa'
  spec.version       = BlackIpa::VERSION
  spec.authors       = ['']
  spec.email         = ['']
  spec.description   = %q{TODO: Write a gem description}
  spec.summary       = %q{TODO: Write a gem summary}
  spec.homepage      = ''
  spec.license       = 'MIT'

  spec.files         = Dir["{lib,vendor}/**/*"] + ['LICENSE.txt', 'README.md', 'Rakefile', 'Gemfile']
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', "~> 1.3"
  spec.add_development_dependency 'rake'
  spec.add_dependency 'railties', '~> 4.0.1'
end
