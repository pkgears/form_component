require 'bundler/setup'
Bundler.setup

lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require('form_component/version')

RSpec.configure do |config|
  # some (optional) config here
end
