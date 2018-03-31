class CreateAddresses < ActiveRecord::Migration[5.1]
  def change
    create_table :addresses do |t|
      t.string :street
      t.string :city
      t.integer :postalCode
      t.string :email
      t.integer :tlf

      t.integer :restaurant_id

      t.timestamps
    end
  end
end
