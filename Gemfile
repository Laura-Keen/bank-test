# frozen_string_literal: true

source "https://rubygems.org"

git_source(:github) {|repo_name| "https://github.com/#{repo_name}" }

group :test do
  gem 'rspec'
  gem 'simplecov', require: false
end

group :development, :test do
  gem 'rubocop', '~> 1.12', '>= 1.12.1'
end 

group :development do
  gem 'hirb', '~> 0.7.3'
end
