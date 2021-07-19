lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'africansms/version'

Gem::Specification.new do |spec|
  spec.name                   = 'africansms'
  spec.version                = Africansms::VERSION
  spec.authors                = ['Ayush Agrawal']
  spec.email                  = ['ayagrawal@grepruby.io']
  spec.summary                = 'AfricasTalking SMS service integration'
  spec.description            = 'Integration of Africastalking SMS service for sending SMS in African regions'
  spec.homepage               = 'https://github.com/ayushagrawal134/africansms'
  spec.license                = 'MIT'
  spec.required_ruby_version  = '>= 2.5.0'
  spec.files                  = `git ls-files`.split("\n")

  spec.add_dependency 'rest-client', '~> 2.1'
  spec.add_development_dependency 'bundler', '~> 2.2.23'
  spec.add_development_dependency 'rake', '~> 13.0'
end
