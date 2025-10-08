# frozen_string_literal: true

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'shc/version'

Gem::Specification.new do |spec|
  spec.name          = 'shc'
  spec.version       = SHC::VERSION
  spec.authors       = ['Stéphane FEUGA OSHIMA']
  spec.email         = ['sfeuga@member.fsf.org']
  spec.summary       = 'Simple HTTP(S) Client in Ruby'
  spec.description   = 'Simple HTTP(S) client in Ruby to query any RESTful API'
  spec.homepage      = 'https://github.com/sfeuga/simple-http_s-client'
  spec.required_ruby_version = '>= 3.4'
  spec.license       = 'GPL-3.0-or-later'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_dependency 'multi_json', '~> 1.17'

  spec.metadata['rubygems_mfa_required'] = 'true'
end
