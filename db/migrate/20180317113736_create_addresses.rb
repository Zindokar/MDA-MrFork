class CreateAddresses < ActiveRecord::Migration[5.1]
  def change
    create_table :addresses do |t|
      t.references :restaurant , foreing_key: true

      t.string :street
      t.string :city
      t.string :postalCode

      t.timestamps
    end
  end
end
