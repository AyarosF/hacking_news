# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

10.times do
  User.create(name: Faker::Zelda.character)
end

5.times do
  Link.create(url: "www.#{Faker::Pokemon.name.downcase}.com")
end

for i in 1..5
  Link.find(i).update(user_id: rand(10))
end


8.times do
  Comment.create(content: Faker::Overwatch.quote, link_id: rand(5), user_id: rand(10))
end

4.times do
  Reply.create(content: Faker::HarryPotter.spell, user_id: rand(10), comment_id: rand(11))
end
