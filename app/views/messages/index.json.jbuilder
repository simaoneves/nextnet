json.array!(@messages) do |message|
  json.extract! message, :id, :message, :from, :to
  json.url message_url(message, format: :json)
end
