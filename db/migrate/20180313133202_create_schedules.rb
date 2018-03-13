class CreateSchedules < ActiveRecord::Migration[5.1]
  def change
    create_table :schedules do |t|
      t.string :weekDay
      t.datetime :openingTime
      t.datetime :closingTime
      t.references :restaurant, foreign_key: true

      t.timestamps
    end
  end
end
