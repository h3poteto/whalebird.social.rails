# config valid only for current version of Capistrano
lock '3.6.1'

set :application, 'whalebird.org'
set :repo_url, 'git@github.com:h3poteto/whalebird.org.git'

# Default branch is :master
set :branch, :master
# ask :branch, `git rev-parse --abbrev-ref HEAD`.chomp

# Default deploy_to directory is /var/www/my_app_name
set :deploy_to, '/srv/www/whalebird.org'

# Default value for :scm is :git
set :scm, :git

# Default value for :format is :airbrussh.
set :format, :airbrussh

# You can configure the Airbrussh format using :format_options.
# These are the defaults.
# set :format_options, command_output: true, log_file: 'log/capistrano.log', color: :auto, truncate: :auto
set :format_options, truncate: :false
set :log_level, :debug

# Default value for :pty is false
set :pty, true

# Default value for :linked_files is []
append :linked_files, 'config/application.yml'

# Default value for linked_dirs is []
append :linked_dirs, 'log', 'tmp/pids', 'tmp/cache', 'tmp/sockets'

# Default value for default_env is {}
# set :default_env, { path: "/opt/ruby/bin:$PATH" }

# Default value for keep_releases is 5
set :keep_releases, 5


set :rbenv_path, '~/.rbenv'
set :rbenv_type, :system
set :rbenv_ruby, '2.3.3'
set :rbenv_prefix, "RBENV_ROOT=#{fetch(:rbenv_path)} RBENV_VERSION=#{fetch(:rbenv_ruby)} #{fetch(:rbenv_path)}/bin/rbenv exec"
set :rbenv_roles, :all

set :unicorn_pid, "#{shared_path}/tmp/pids/unicorn.pid"
set :unicorn_config_path, "#{release_path}/config/unicorn.rb"

after 'deploy:publishing', 'deploy:restart'

namespace :deploy do
  desc 'restart'
  task :restart do
    invoke 'unicorn:restart'
  end

  desc 'Upload local config yml'
  task :upload do
    on roles(:app) do |host|
      unless test "[ -d #{shared_path}/config ]"
        execute "mkdir -p #{shared_path}/config"
      end
      unless test "[ -d #{shared_path}/config/settings ]"
        execute "mkdir -p #{shared_path}/config/settings"
      end
      upload!('config/application.production.yml', "#{shared_path}/config/application.yml")
    end
  end

  before :starting, 'deploy:upload'
end
