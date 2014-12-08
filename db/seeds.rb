# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


user = User.create(email: 'admin@example.com', password: 'grimpe', password_confirmation: 'grimpe')
user.admin = true
user.save

100.times do |i|
  Framework.create!(user: user, name: "Framework ##{i}", description: 'A description')
end