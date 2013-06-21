require 'coveralls'
require 'simplecov'
require 'simplecov-rcov'

Coveralls.wear!

#SimpleCov.formatter = SimpleCov::Formatter::RcovFormatter
#SimpleCov.start 'rails'

#SimpleCov.formatter = Coveralls::SimpleCov::Formatter
#SimpleCov.start do
#  add_filter 'app/secrets'
#end

# simplecov, rcov, coderails の３東リの書式のレポートを生成する。
SimpleCov.formatter = SimpleCov::Formatter::MultiFormatter[
  SimpleCov::Formatter::HTMLFormatter,
  SimpleCov::Formatter::RcovFormatter,
  Coveralls::SimpleCov::Formatter
]
SimpleCov.start


ENV["RAILS_ENV"] = "test"
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'

class ActiveSupport::TestCase
  # Setup all fixtures in test/fixtures/*.(yml|csv) for all tests in alphabetical order.
  #
  # Note: You'll currently still have to declare fixtures explicitly in integration tests
  # -- they do not yet inherit this setting
  fixtures :all

  # Add more helper methods to be used by all tests here...
end
