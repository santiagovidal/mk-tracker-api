source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.4.1'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.2.0'

gem 'activeadmin', '~> 1.3.0'
gem 'bootsnap', '~> 1.3.0'
gem 'devise', '~> 4.4.3'
gem 'draper', '~> 3.0.0'
gem 'figaro', '~> 1.1.1'
gem 'haml-rails', '~> 1.0.0'
gem 'jbuilder', '~> 2.7.0'
gem 'pg', '~> 0.18.2'
gem 'puma', '~> 3.11'
gem 'sass-rails', '~> 5.0'
gem 'coffee-rails', '~> 4.2'
gem 'turbolinks', '~> 5'

group :development, :test do
  gem 'bullet', '~> 5.7.5'
  gem 'factory_bot_rails', '~> 4.8.2'
  gem 'pry-byebug', '~> 3.3.0', platform: :mri
  gem 'rspec-rails', '~> 3.8.0'
end

group :development do
  gem 'annotate', '~> 2.6.5'
  gem 'better_errors', '~> 2.1.1'
  gem 'binding_of_caller', '~> 0.7.2'
  gem 'brakeman', '~> 4.3.1'
  gem 'letter_opener', '~> 1.4.1'
  gem 'listen', '~> 3.0.5'
  gem 'rails_best_practices', '~> 1.19.0'
  gem 'reek', '~> 4.7.2'
  gem 'rubocop', '~> 0.49.1'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :test do
  gem 'database_cleaner', '~> 1.4.1'
  gem 'faker', '~> 1.7.3'
  gem 'shoulda-matchers', '~> 3.1.1'
  gem 'simplecov', '~> 0.13.0', require: false
  gem 'webmock', '~> 2.3.2'
end

group :assets do
  gem 'uglifier', '~> 2.7.2'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
