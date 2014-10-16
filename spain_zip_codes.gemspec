# coding: utf-8
require File.expand_path('../lib/spain_zip_codes/version', __FILE__)

Gem::Specification.new do |spec|
  spec.name          = 'spain_zip_codes'
  spec.version       = SpainZipCodes::VERSION
  spec.authors       = ['Luismi Ramírez', 'Gustavo Caso']
  spec.email         = ['luismir89@gmail.com', 'gustavocaso@gmail.com']
  spec.summary       = %q{Obtain provinces and locations based on zip code}
  spec.homepage      = 'https://github.com/luismiramirez/spain_zip_codes'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.gsub(/\x00/, ',').split(',')
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_development_dependency 'rspec'
  spec.add_development_dependency 'bundler', '~> 1.6'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'simplecov'
end
