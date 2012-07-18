# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.create! do |user|
  user.full_name                        = 'Heather Welsh'
  user.email                            = 'vrwebworx@gmail.com'
  user.password = password_conformation = 'girlz4x42'
end

Category.create!(title: 'Business')
Category.create!(title: 'Hobbies')
Category.create!(title: 'Music')
Category.create!(title: 'Books')
