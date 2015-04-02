require 'bundler/setup'
require 'awesome_print'
require 'guard/rubocop'
require 'food_digest'
Bundler.setup

RSpec.configure do |config|
  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end
  config.mock_with :rspec do |mocks|
    mocks.syntax = :expect
    mocks.verify_partial_doubles = true
  end
  config.filter_run :focus
  config.run_all_when_everything_filtered = true
  config.disable_monkey_patching!
  config.warnings = true
  config.default_formatter = 'doc'
  config.profile_examples = 10
  config.order = :random
  config.expose_dsl_globally = true
  Kernel.srand config.seed
end

