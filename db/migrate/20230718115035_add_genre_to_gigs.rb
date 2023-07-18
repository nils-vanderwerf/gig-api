class AddGenreToGigs < ActiveRecord::Migration[7.0]
  def change
    add_reference :gigs, :genre, foreign_key: true
  end
end
