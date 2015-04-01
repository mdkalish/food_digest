$LOAD_PATH.unshift File.expand_path('../lib', __FILE__)
require 'food_digest/version'

Gem::Specification.new do |s|
  s.name         = 'food_digest'
  s.version      = FoodDigest::Version::STRING
  s.platform     = Gem::Platform::RUBY
  s.license      = ''
  s.author       = 'Maciej Kalisz'
  s.email        = 'm.kalisz@pilot.co'
  s.homepage     = 'https://github.com/mdkalish/food_digest'
  s.summary      = 'Prints menus from your fav restaurants to Slack.'

  s.files        = `git ls-files -- lib/*`.split("\n")
  s.test_files   = `git ls-files -- {spec,features}/*`.split("\n")
  s.executables  = `git ls-files -- bin/*`.split("\n").map { |f| File.basename(f) }
  s.require_path = 'lib'

  s.add_development_dependency 'bundler',       '~> 1.9'
  s.add_development_dependency 'rake',          '~> 10.4'
  s.add_development_dependency 'rspec',         '~> 3.2'
  s.add_development_dependency 'pry',           '~> 0.10'
  s.add_development_dependency 'awesome_print', '~> 1.6'
  s.add_development_dependency 'guard',         '~> 2.12'
  s.add_development_dependency 'guard-rspec',   '~> 4.5'
  s.add_development_dependency 'guard-rubocop', '~> 1.2'
end

