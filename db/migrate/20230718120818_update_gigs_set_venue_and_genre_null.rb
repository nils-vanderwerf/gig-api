class UpdateGigsSetVenueAndGenreNull < ActiveRecord::Migration[7.0]
  def up
    Gig.update_all(venue_id: nil, genre_id: nil)
  end

  def down
  end
end
