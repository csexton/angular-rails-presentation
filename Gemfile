source 'https://rubygems.org'

ruby "2.0.0"

gem 'rails', '4.0.0.rc1'


gem 'pg'

gem 'jbuilder', '~> 1.0.1'
gem 'sass-rails', '~> 4.0.0.rc1'
gem 'coffee-rails', '~> 4.0.0'


gem 'slim-rails'
gem 'font-awesome-sass-rails'
gem 'redcarpet'
gem 'neat' # Burbon, neat

group :development, :test do
  gem 'rspec-rails', '~> 2.0'
  gem 'debugger'
  gem 'rails-pry'
end

group :heroku do
  gem 'rails_log_stdout',           github: 'heroku/rails_log_stdout'
  gem 'rails3_serve_static_assets', github: 'heroku/rails3_serve_static_assets'
  gem 'unicorn'
end

group :assets do
  gem 'therubyracer', platforms: :ruby
  gem 'uglifier'
  gem 'ngmin-rails' # ng pre-minifier, it's awesome!
end
