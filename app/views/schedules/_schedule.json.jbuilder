json.extract! schedule, :id, :weekDay, :openingTime, :closingTime, :created_at, :updated_at
json.url schedule_url(schedule, format: :json)
