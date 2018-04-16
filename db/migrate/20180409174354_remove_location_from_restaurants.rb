class RemoveLocationFromRestaurants < ActiveRecord::Migration[5.1]
  def change
    remove_column :restaurants, :location, :string
  end
end
