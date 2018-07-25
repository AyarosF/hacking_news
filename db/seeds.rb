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

#Création de 5 liens avec comme url un nom de pokemon random et comme user_id un nombre entre 1 et 10
15.times do
  Link.create(url: "www.#{Faker::Pokemon.name.downcase}.com", user_id: rand(10))
end

12.times do
  Comment.create(content: Faker::Overwatch.quote, link_id: rand(15), user_id: rand(10))
end

8.times do
  Reply.create(content: Faker::HarryPotter.spell, user_id: rand(10), comment_id: rand(8))
end
