json.extract! reservation, :id, :date, :description, :personCount, :restaurant_id, :user_id, :created_at, :updated_at
json.url reservation_url(reservation, format: :json)
