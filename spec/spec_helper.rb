require 'rspec'
require_relative '../selenium_class.rb'

RSpec.configure do |config|
  config.color = true
  config.formatter = :documentation
end
