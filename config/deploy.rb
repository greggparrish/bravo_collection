set :application, "bravo_collection"
set :repository,  "git@github.com:greggparrish/bravo_collection.git"
set :deploy_to, "/home/ubuntu/public/web/bravo"
set :stage, :production


set :scm, :git
set :branch, "master"
set :use_sudo, false

set :rails_env, "production"
set :deploy_via, :copy

set :ssh_options, { :forward_agent => true }

set :keep_releases, 3

server "172.31.33.11", user: "ubuntu", roles: [:app, :web, :db], :primary => true

namespace :deploy do
  desc "Restart Passenger app"
  task :restart do
    run "#{ try_sudo } touch #{ File.join(current_path, 'tmp', 'restart.txt') }"
  end
end

after "deploy", "deploy:restart"
after "deploy", "deploy:cleanup"

