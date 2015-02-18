# config valid only for Capistrano 3.1
lock '3.1.0'

set :application, 'bravo_collection'
set :repo_url, 'git@github.com:greggparrish/bravo_collection.git'
set :deploy_to, '/home/ubuntu/public/web/bravo'
  
set :rails_env, "deploy" 
set :keep_releases, 5

namespace :deploy do
  desc 'Restart application'
  task :restart do
    on roles(:app), in: :sequence, wait: 5 do
      execute :touch, release_path.join('tmp/restart.txt')
    end
  end

  after :restart, :clear_cache do
    on roles(:web), in: :groups, limit: 3, wait: 10 do
      # Here we can do anything such as:
      # within release_path do
      #   execute :rake, 'cache:clear'
      # end
    end
  end

  after :finishing, 'deploy:cleanup'

end
