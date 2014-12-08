namespace :db do
  desc 'Delete the db, create, migrate and seed'
  task :recreate do
    sh 'rake db:drop db:create db:migrate db:seed'
  end
end