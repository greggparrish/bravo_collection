# config valid only for Capistrano 3.1
lock '3.1.0'

set :application, 'bravo_collection'
set :repo_url, 'git@github.com:greggparrish/bravo_collection.git'
set :deploy_to, '/home/ubuntu/public/web/bravo'

namespace :deploy do

  after :publishing, :restart
  set :rails_env, "deploy"  # will this effect other built-in tasks? Maybe. 
  set :keep_releases, 5
  after "deploy:restart", "deploy:cleanup" 
  end
