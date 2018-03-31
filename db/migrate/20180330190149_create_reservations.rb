class CreateReservations < ActiveRecord::Migration[5.1]
  def change
    create_table :reservations do |t|
      t.datetime :date
      t.integer :personCount
      t.string :description

      t.integer :restaurant_id
      t.integer :user_id

      t.timestamps
    end
  end
end
