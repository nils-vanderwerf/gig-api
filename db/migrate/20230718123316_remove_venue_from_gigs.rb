class RemoveVenueFromGigs < ActiveRecord::Migration[7.0]
  def change
    remove_column :gigs, :venue, :string
  end
end
