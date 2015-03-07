json.array!(@events) do |event|
  json.extract! event, :id, :name, :description, :deadline, :image, :category
  json.url event_url(event, format: :json)
end
