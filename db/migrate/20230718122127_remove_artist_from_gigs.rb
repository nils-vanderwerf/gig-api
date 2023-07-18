class RemoveArtistFromGigs < ActiveRecord::Migration[7.0]
  def change
    remove_column :gigs, :artist, :string
  end
end
