set :deploy_env, 'production'
set :unicorn_env, 'production'
set :rails_env, 'production'
set :app_env, 'production'
set :deploy_to, '/var/www/html/errbit.cloverlab.jp.net'
set :repo_url, 'git@leeap.github.com:dev-cloverlab/errbit.git'

set :branch, 'master'

# Role
role :app, %w{clover@192.168.0.10}
role :web, %w{clover@192.168.0.10}

server '192.168.0.10', user: 'clover', roles: %w{web app}

set :ssh_options, {
    keys: %w(/home/clover/.ssh/id_rsa),
    forward_agent: false,
    auth_methods: %w(publickey)
}

namespace :deploy do
  desc 'Start application'
  task :start do
    on roles(:app) do
      invoke 'unicorn:start'
    end
  end

  desc 'Stop application'
  task :stop do
    on roles(:app) do
      invoke 'unicorn:stop'
    end
  end

  desc 'Restart application'
  task :restart do
    on roles(:app) do
      invoke 'unicorn:restart'
    end
  end
end

after 'deploy:publishing', 'deploy:restart'

