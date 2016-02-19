$LOAD_PATH.unshift File.expand_path("../../lib", __FILE__)

require 'minitest'
require 'rspec-power_assert'

RSpec.configure do |config|
  config.expect_with :rspec, :minitest
  config.default_formatter = "doc" if config.files_to_run.one?
end
