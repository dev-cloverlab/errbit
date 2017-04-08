require 'capistrano/setup'
require 'capistrano/deploy'

require 'capistrano/rbenv'
#require 'capistrano/rbenv' if ENV['rbenv']
require 'capistrano/bundler'
require 'capistrano/rails/assets'
require 'capistrano/puma'

require "capistrano/git_copy"
install_plugin Capistrano::GitCopy::SCM

Dir.glob('lib/capistrano/tasks/*.rake').each { |r| import r }
