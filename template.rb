gem 'sqlite3'

gem 'will_paginate', "~> 3.0.pre2"
gem 'devise'
gem "activo-rails"
gem "attrtastic"

gem 'meta_search'
gem 'inherited_resources', '~> 1.2.1'
gem 'simple_form'
gem 'render_inheritable'
gem 'jquery-rails', :git => 'git://github.com/pgericson/jquery-rails.git'

gem "rails-erd",:group => :development 
gem 'looksee',:group => :development 
gem 'awesome_print',:group => :development 
gem 'railroady',:group => :development 

route "devise_for :admins "
route "resources :posts"

cur_dir=File.dirname(__FILE__)

run 'bundle install'
run "cp -rf #{cur_dir}/app  ."
run "cp -rf #{cur_dir}/db  ."
run "cp -rf #{cur_dir}/public  ."

run 'rails g simple_form:install'
run 'rails g jquery:install'
run 'rails g devise:install'

rake 'db:migrate'


