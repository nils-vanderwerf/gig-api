class AddVenueToGigs < ActiveRecord::Migration[7.0]
  def change
    add_reference :gigs, :venue, foreign_key: true
  end
end
