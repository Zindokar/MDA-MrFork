if current_user.role ==2
endjson.array! @restaurants, partial: 'restaurants/restaurant', as: :restaurant
end
if current_user.role ==1
  endjson.array! @restaurants, partial: 'admin/restaurants/restaurant', as: :restaurant
end
