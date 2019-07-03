source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.5.5'

gem 'rails',                           '5.2.3'
gem 'puma',                            '3.12.1'
gem 'sass-rails',                      '5.0.7'
gem 'uglifier',                        '4.1.20'
gem 'coffee-rails',                    '4.2.2'
gem 'turbolinks',                      '5.2.0'
gem 'jbuilder',                        '2.9.1'
gem 'bootsnap',                        '1.4.4', require: false

group :development, :test do
  gem 'sqlite3',                       '1.4.1'
  gem 'byebug',                        '11.0.1',platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  gem 'web-console',                   '3.7.0'
  gem 'listen',                        '3.1.5'
  gem 'spring',                        '2.1.0'
  gem 'spring-watcher-listen',         '2.0.1'
end

group :test do
  gem 'capybara',                     '3.25.0'
  gem 'rails-controller-testing',     '1.0.4'
  gem 'minitest',                     '5.11.3'
  gem 'minitest-reporters',           '1.3.6'
  gem 'guard',                        '2.15.0'
  gem 'guard-minitest',               '2.4.6'
end

group :production do
  gem 'pg',                            '1.1.4'
end
