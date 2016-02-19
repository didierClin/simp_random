# Load DSL and set up stages
# require 'capistrano/setup'

# Include default deployment tasks
require 'capistrano/deploy'

# If you are using rvm add these lines:
require 'capistrano/rvm'
set :rvm_type, :user
set :rvm_ruby_version, '2.2.4'

require 'capistrano/bundler'
require 'capistrano/rails'

# Load custom tasks from `lib/capistrano/tasks` if you have any defined
Dir.glob('lib/capistrano/tasks/*.rake').each { |r| import r }
