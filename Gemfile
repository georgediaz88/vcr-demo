source 'https://rubygems.org'

gem 'rails', '4.0.2'

# Database
gem 'sqlite3'

# Assets
gem 'sass-rails', '~> 4.0.0'
gem 'quiet_assets'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.0.0'
gem 'therubyracer', platforms: :ruby
gem 'foundation-rails'

# Main
gem 'jquery-rails'
gem 'haml-rails'

### Twitter ###
gem 'twitter'
###############

group :doc do
  gem 'sdoc', require: false
end

group :test, :development do
  gem 'capybara'
  gem 'capybara-mechanize'
  gem 'database_cleaner'
  gem 'factory_girl_rails'
  gem 'faker'
  gem 'pry-rails'
  gem 'rspec-rails'
  gem 'thin'

  #### VCR ####
  gem 'vcr'
  #############
end

group :test do

  #### VCR ####
  gem 'webmock', '~> 1.15.2'
  #############

end

group :development do
  gem 'awesome_print'
  gem 'better_errors'
  gem 'binding_of_caller'
end