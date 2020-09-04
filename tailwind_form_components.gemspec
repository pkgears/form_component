# frozen_string_literal: true

lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require('tailwind_form_components/version')

Gem::Specification.new do |spec|
  spec.name        = 'tailwind_form_components'
  spec.version     = TailwindFormComponents::VERSION::STRING
  spec.date        = '2020-09-03'
  spec.summary     = "Form helper for tailwind components inputs"
  spec.description = "A gem for use forms with tailwind components based in ViewComponent"
  spec.authors     = ["Cesar Eduardo Ortiz Salazar"]
  spec.email       = 'pkgears@gmail.com'
  spec.files       = ["lib/*"]
  spec.homepage    =
    'https://rubygems.org/'
  spec.license       = 'MIT'

  spec.required_ruby_version = ">= 2.3.0"

  spec.add_dependency('activemodel', '>= 5.0')
  spec.add_dependency('actionpack', '>= 5.0')
  spec.add_dependency('view_component')
  spec.add_development_dependency("rspec")
end
