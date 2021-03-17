json.extract! order, :id, :user_id, :pedal_id, :address, :postcode, :city, :state, :country, :created_at, :updated_at
json.url order_url(order, format: :json)
