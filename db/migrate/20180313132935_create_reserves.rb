class CreateReserves < ActiveRecord::Migration[5.1]
  def change
    create_table :reserves do |t|
      t.integer :personCount
      t.string :comments
      t.references :restaurant, foreign_key: true

      t.timestamps
    end
  end
end
