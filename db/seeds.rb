require 'faker'

genres = ['Rock', 'Pop', 'Jazz', 'Hip-Hop', 'Electronic']

# Create genres
genres.each { |name| Genre.create(name: name) }

# Create venues
5.times { |n| Venue.create(name: "Venue #{n + 1}") }

# Create gigs with random venues and genres
50.times do
  Gig.create(
    title: Faker::Music.album,
    date: Faker::Date.between(from: Date.today, to: 1.year.from_now),
    venue_id: Venue.pluck(:id).sample,
    genre_id: Genre.pluck(:id).sample
  )
end
