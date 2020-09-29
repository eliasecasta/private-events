json.extract! event, :id, :date, :title, :location, :description, :created_at, :updated_at
json.url event_url(event, format: :json)
