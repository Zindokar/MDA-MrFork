json.extract! address, :id, :street, :city, :postalCode, :created_at, :updated_at
json.url address_url(address, format: :json)
