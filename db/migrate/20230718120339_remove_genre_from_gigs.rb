class RemoveGenreFromGigs < ActiveRecord::Migration[7.0]
  def change
    remove_column :gigs, :genre, :string
  end
end
