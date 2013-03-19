# Configure Rails Environment
ENV["RAILS_ENV"] = "test"

require 'coveralls'
Coveralls.wear!

require File.expand_path("../dummy/config/environment.rb",  __FILE__)
require "rails/test_help"
require 'minitest/spec'

Rails.backtrace_cleaner.remove_silencers!

# Load support files
Dir["#{File.dirname(__FILE__)}/support/**/*.rb"].each { |f| require f }

# For Generators
require 'rails/generators/test_case'
