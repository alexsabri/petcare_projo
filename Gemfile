source 'https://rubygems.org'


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.3'
# Use sqlite3 as the database for Active Record
gem 'sqlite3'
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

# Use Unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development
  gem 'annotate'

  # For file uploading
  gem 'carrierwave'

  # For image manipulation
  gem 'image_magick'
  gem 'mini_magick' # sijui err0r for must install imagemagick or graphicsmagick if you dont install - requirements according to ruby gem is that you must have these things installed

  # For printing organized output in rails console
  gem "awesome_print", require:"ap"

  # This gem helps print tables in the console - start command with tp then modelname.all for instance
  # tp Petsitter.all ,"id" , "first_name" , "surname" , "other_names" ,  "date_of_birth" , "contact_line_two"
  gem "table_print"

  # For using slider for range fields like price in charges sections 
  gem 'bootstrap-slider-rails'
  
  # FOR USING ALL OF FONT AWESOME ICONS BECAUSE BOOTSTRAP HAS FEW ICONS 
  gem "font-awesome-rails"

  # this gem lets you get a possessive form of a string
  # “Brian”.possessive # => Brian's 
  # used in edit_profile_dashboard panels
  gem "possessive"

  # ----------------------------------------------------------------------------
  gem 'ruby-graphviz', '~> 1.2', '>= 1.2.2'
  # The rails-erd gem analyzes models and DB schema and uses Graphviz to generate an erd diagram for us - remember one has to install Graphviz in your machine - the line of code above does that
  gem 'rails-erd'
  
  # it takes some options
  # how to run: rake erd inheritance=true indirect=false prepend_primary=true attributes=foreign_keys,primary_keys,content
  # ----------------------------------------------------------------------------


group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'

  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'

end

