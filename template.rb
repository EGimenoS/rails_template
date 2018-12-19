def source_paths
  [File.expand_path(File.dirname(__FILE__))]
end

def add_gems
  gem 'bootstrap', '~> 4.1', '>= 4.1.1'
  gem 'font-awesome-sass', '~> 5.5', '>= 5.5.0.1'  
  gem 'jquery-rails', '~> 4.3.1'
  gem 'local_time', '~> 2.0', '>= 2.0.1'
  gem 'data-confirm-modal', '~> 1.6', '>= 1.6.2'
  gem_group :development, :test do
    gem "better_errors"
    gem "binding_of_caller"
    gem 'rubocop', require: false
  end
end

def set_db
  inside 'config' do  
    remove_file 'database.yml'
    create_file 'database.yml' do <<-EOF
  default: &default
    adapter: postgresql
    encoding: unicode
    pool: <%= ENV.fetch("RAILS_MAX_THREADS") { 5 } %>
    username: postgres
    password: password
    host: localhost

  development:
    <<: *default
    database: #{app_name}_development

  test:
    <<: *default
    database: #{app_name}_test

  production:
    <<: *default
    database: #{app_name}_production
  EOF
    end
  end
end

def set_application_name
  # Add Application Name to Config
  environment "config.application_name = Rails.application.class.parent_name"

  # Announce the user where he can change the application name in the future.
  puts "You can change application name inside: ./config/application.rb"
end


def add_bootstrap
  # Remove Application CSS 
  run "mv app/assets/stylesheets/application.css app/assets/stylesheets/application.scss"
  insert_into_file(
    "app/assets/stylesheets/application.scss",
    "\n@import 'bootstrap';",
    after: "*/"
  )
  # Add Bootstrap JS
  insert_into_file(
    "app/assets/javascripts/application.js",
    "\n//= require jquery\n//= require popper\n//= require bootstrap\n//= require data-confirm-modal\n//= require local-time",
    after: "//= require rails-ujs"
  )
end

def copy_initializers
  directory "config/initializers", force: true
end

def stop_spring
  run "spring stop"
end

# Main setup
source_paths
add_gems
set_db


after_bundle do
  set_application_name
  stop_spring
  add_bootstrap
  copy_initializers

  # Migrate
  rails_command "db:create"
  rails_command "db:migrate"
end