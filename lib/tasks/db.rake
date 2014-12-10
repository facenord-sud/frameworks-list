namespace :db do
  desc 'Delete the db, create, migrate and seed'
  task :recreate do
    sh 'rake db:drop db:create db:migrate db:seed'
  end

  desc 'Populate with categories from stackoverflow'
  task populate: :environment do
    page = 0
    loop do
      page += 1
      results = JSON.parse(RestClient.get("https://api.stackexchange.com/2.2/tags?page=#{page}&order=desc&sort=popular&site=stackoverflow"))
      results['items'].each do |tag|
        Category.create(name: tag['name'])
      end
      break unless results['has_more']
    end
  end
end