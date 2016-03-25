source 'https://rubygems.org'


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.5.1'
# Use mysql as the database for Active Record
gem 'mysql2', '>= 0.3.13', '< 0.5'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.1.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc

# Use ActiveModel has_secure_password
 gem 'bcrypt', '~> 3.1.7'

##############################################################################
## Here be custom gems
##############################################################################
# configuration management
gem 'figaro'

#haml ftw
gem 'haml'

# boostrap
gem 'therubyracer'
gem 'less-rails' #Sprockets (what Rails 3.1 uses for its asset pipeline) supports LESS
gem 'twitter-bootstrap-rails' # rails generate bootstrap:install static

# user authentication
gem 'devise' # rails generate devise:install

#phpmyadmin-esque backend
gem 'rails_admin'

#form builder
gem 'simple_form'

#bootstrap modal confirm dialogs
gem 'data-confirm-modal', github: 'ifad/data-confirm-modal'

#add breadcrumbs to views
## TODO the twitter-bootstrap-rails gem provides this same functionality - refactor this out
gem 'breadcrumbs_on_rails'

#manage uploading of files
gem 'paperclip', '~> 4.3'

#be able to connect and send data to Amazon S3
gem 'aws-sdk', '< 2.0'

#drag and drog sortable pages
gem 'ranked-model'

#used for the drag and drop sortable on pages
gem 'jquery-ui-rails'

##############################################################################
## Here be custom gems
##############################################################################

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
end
