# config valid only for Capistrano 3.1
lock '3.2.1'

# =====================================
# CONFIG
# =====================================
set :application, "fashion_startup"
set :scm, :git
set :repository, "https://github.com/cdangg/fashion_startup"
set :branch, "production"
set :ssh_options, { :forward_agent => true }
set :stage, :production
set :user, "schu"
set :use_sudo, false
set :runner, "deploy"
set :deploy_to, "/var/nginx/public/#{application}"
set :app_server, :puma
set :domain, "vps3.scottchu.co"

# =====================================
# ROLES
# =====================================
role :app, domain
role :web, domain
role :db, domain, :primary => true

# =====================================
# CUSTOM
# =====================================

namespace :puma do
  desc "Start Puma"
  task :start, :except => { :no_release => true } do
    run "sudo /etc/init.d/puma start #{application}"
  end
  after "deploy:start", "puma:start"
  desc "Stop Puma"
  task :stop, :except => { :no_release => true } do
    run "sudo /etc/init.d/puma stop #{application}"
  end
  after "deploy:stop", "puma:stop"
  desc "Restart Puma"
  task :restart, roles: :app do
    run "sudo /etc/init.d/puma restart #{application}"
  end
  after "deploy:restart", "puma:restart"

  desc "Create a shared tmp dir for puma state file"
  task :after_symlink, roles: :app do
    run "sudo rm -rf #{release_path}/tmp"
    run "ln -s #{shared_path}/tmp/ #{release_path}/tmp"
  end
  after "deploy:create_symlink", "puma:after_symlink"
end

# # config valid only for Capistrano 3.1
# lock '3.2.1'

# set :application, 'my_app_name'
# set :repo_url, 'git@example.com:me/my_repo.git'

# # Default branch is :master
# # ask :branch, proc { `git rev-parse --abbrev-ref HEAD`.chomp }.call

# # Default deploy_to directory is /var/www/my_app
# # set :deploy_to, '/var/www/my_app'

# # Default value for :scm is :git
# # set :scm, :git

# # Default value for :format is :pretty
# # set :format, :pretty

# # Default value for :log_level is :debug
# # set :log_level, :debug

# # Default value for :pty is false
# # set :pty, true

# # Default value for :linked_files is []
# # set :linked_files, %w{config/database.yml}

# # Default value for linked_dirs is []
# # set :linked_dirs, %w{bin log tmp/pids tmp/cache tmp/sockets vendor/bundle public/system}

# # Default value for default_env is {}
# # set :default_env, { path: "/opt/ruby/bin:$PATH" }

# # Default value for keep_releases is 5
# # set :keep_releases, 5

# namespace :deploy do

#   desc 'Restart application'
#   task :restart do
#     on roles(:app), in: :sequence, wait: 5 do
#       # Your restart mechanism here, for example:
#       # execute :touch, release_path.join('tmp/restart.txt')
#     end
#   end

#   after :publishing, :restart

#   after :restart, :clear_cache do
#     on roles(:web), in: :groups, limit: 3, wait: 10 do
#       # Here we can do anything such as:
#       # within release_path do
#       #   execute :rake, 'cache:clear'
#       # end
#     end
#   end

# end
