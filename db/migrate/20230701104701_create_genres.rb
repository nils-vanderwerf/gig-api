class CreateGenres < ActiveRecord::Migration[7.0]
  def change
    create_table :create_genres do |t|
      t.string :name
      t.string :address

      t.timestamps
    end
  end
end
