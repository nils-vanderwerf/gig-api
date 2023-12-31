class CreateGigs < ActiveRecord::Migration[7.0]
  def change
    create_table :gigs do |t|
      t.string :title
      t.string :venue
      t.date :date
      t.string :genre
      t.text :description

      t.timestamps
    end
  end
end
