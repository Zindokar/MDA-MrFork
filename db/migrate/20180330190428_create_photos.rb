class CreatePhotos < ActiveRecord::Migration[5.1]
  def change
    create_table :photos do |t|
      t.string :image

      t.integer :restaurant_id

      t.timestamps
    end
  end
end
