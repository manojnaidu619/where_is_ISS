require "bundler/setup"
require 'open-uri'
require 'json'

require 'coveralls'               # for coveralls
Coveralls.wear!                   # for coveralls
require "where_is_ISS"

RSpec.configure do |config|
  # Enable flags like --only-failures and --next-failure
  config.example_status_persistence_file_path = ".rspec_status"

  # Disable RSpec exposing methods globally on `Module` and `main`
  config.disable_monkey_patching!

  config.expect_with :rspec do |c|
    c.syntax = :expect
  end
end
