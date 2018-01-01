json.extract! artist, :id, :name, :location_id, :description, :created_at, :updated_at
json.url artist_url(artist, format: :json)
