class CreateRestaurantsTypesJoin < ActiveRecord::Migration[5.1]
  def change
    create_table :restaurants_types, :id => false do |t|
      t.integer("restaurant_id")
      t.integer("type_id")
    end
    add_index :restaurants_types, ["restaurant_id","type_id"], :name => 'rest_index'
  end
end