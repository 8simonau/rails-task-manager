# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require 'faker'
(1..10).each do
  completed = rand.round == 1
  Task.create(title: Faker::Hobby.activity, details: Faker::Quote.famous_last_words, completed: completed)
end
