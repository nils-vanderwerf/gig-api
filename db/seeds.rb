# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require 'faker'

# create 10 gigs using columns defined in schema
10.times do
  Gig.create(
    title: Faker::Music::RockBand.name,
    venue: Faker::Music::RockBand.name,
    date: Faker::Date.forward(days: 23),
    genre: Faker::Music.genre,
    description: Faker::Lorem.paragraph(sentence_count: 2)
  )
end
