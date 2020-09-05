# frozen_string_literal: true

lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require('form_component/version')

Gem::Specification.new do |spec|
  spec.name        = 'form_component'
  spec.version     = FormComponent::VERSION::STRING
  spec.date        = '2020-09-03'
  spec.summary     = "FormBuilers based in view components inputs"
  spec.description = "A gem for use forms with  based in ViewComponent"
  spec.authors     = ["Cesar Eduardo Ortiz"]
  spec.email       = 'pkgears@gmail.com'
  spec.files       = Dir['lib/**/*']
  spec.homepage    = 'https://rubygems.org/'
  spec.license     = 'MIT'

  spec.required_ruby_version = ">= 2.3.0"

  spec.add_dependency "rails", "~> 6.0.3", ">= 6.0.3.1"
  spec.add_dependency('activemodel')
  spec.add_dependency('actionview')
  spec.add_dependency('actionpack')
  spec.add_dependency('view_component')
  spec.add_development_dependency("rspec")
end
