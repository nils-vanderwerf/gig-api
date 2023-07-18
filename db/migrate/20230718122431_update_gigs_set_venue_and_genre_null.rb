class UpdateGigsSetVenueAndGenreNull < ActiveRecord::Migration[7.0]
  def up
    Gig.update_all(venue_id: nil, genre_id: nil)
  end

  def down
    # If you want to rollback, you can add the necessary logic here.
    # For this specific migration, there's no need to do anything in the rollback.
  end
end
