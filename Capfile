require 'capistrano/setup'
require 'capistrano/deploy'

require 'capistrano/rails'
require 'capistrano/rbenv' if ENV['rbenv']
require 'capistrano/bundler'
require 'capistrano/rails/assets'
require 'capistrano/faster_assets'
require 'capistrano3/unicorn'

Dir.glob('lib/capistrano/tasks/*.rake').each { |r| import r }
