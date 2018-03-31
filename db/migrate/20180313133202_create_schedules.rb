class CreateSchedules < ActiveRecord::Migration[5.1]
  def change
    create_table :schedules do |t|
      t.string :weekDay
      t.datetime :openingTime
      t.datetime :closingTime

      t.integer :restaurant_id

      t.timestamps
    end
  end
end
