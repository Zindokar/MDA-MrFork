class ChangeWeekDayFromSchedules < ActiveRecord::Migration[5.1]
  def change
    change_column :schedules, :weekDay, :integer
  end
end
