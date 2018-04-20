json.extract! rental, :id, :bike_id, :user_id, :start_time, :end_time, :start_station, :end_station, :cost, :created_at, :updated_at
json.url rental_url(rental, format: :json)
