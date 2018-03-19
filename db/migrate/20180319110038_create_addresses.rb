class CreateAddresses < ActiveRecord::Migration[5.1]
  def change
    create_table :addresses do |t|
      t.string :street
      t.string :city
      t.integer :postalCode
      t.references :restaurant , foreing_key: true

      t.timestamps
    end
  end
end
