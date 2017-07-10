source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem 'rails', '~> 5.1.2'
gem 'sqlite3'
gem 'puma', '~> 3.7'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '~> 3.0', '>= 3.0.4'
gem 'webpacker'

group :development, :test do
  gem 'awesome_print'
  gem 'byebug', platform: :mri
  gem 'bullet', '~> 5.5', '>= 5.5.1'
  gem 'database_cleaner', '~> 1.5', '>= 1.5.3'
  gem 'derailed_benchmarks', group: :development
  gem 'factory_girl_rails', '~> 4.0'
  gem 'guard', '>= 2.2.2', require: false
  gem 'guard-minitest', require: false
  gem 'guard-rubocop', require: false
  gem 'guard-shell', require: false
  gem 'meta_request'
  gem 'minitest-rails'
  gem 'minitest-reporters'
  gem 'pry-rails'
  gem 'reek', '~> 4.5.2', require: false
  gem 'rubocop', '~> 0.45.0', require: false
  gem 'simplecov', '~> 0.12.0', require: false
end

group :development do
  gem 'web-console'
  gem 'listen', '~> 3.1', '>= 3.1.5'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0', '>= 2.0.1'
  gem 'annotate'
  gem 'binding_of_caller'
  gem 'foreman'
  gem 'brakeman', require: false
  gem 'bundler-audit', require: false
  gem 'marginalia', '~> 1.4'
end

group :darwin do
  gem 'rb-fsevent', require: false
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
gem 'autoprefixer-rails', '~> 6.7'
gem 'react-rails', '~> 2.2', '>= 2.2.1'
gem 'pg', '~> 0.19.0'
gem 'lograge', '~> 0.5.1'
gem 'sidekiq', '~> 4.2', '>= 4.2.9'
gem 'oj', '~> 2.17', '>= 2.17.4'
gem 'js-routes', '~> 1.3'
gem 'seed-fu', '~> 2.3', '>= 2.3.6'
gem 'reform', '~> 2.2', '>= 2.2.3'
gem 'reform-rails', '~> 0.1.7'
