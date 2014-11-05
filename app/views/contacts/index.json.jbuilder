json.array!(@contacts) do |contact|
  json.extract! contact, :id, :intro, :name, :email, :user_id, :requests
  json.url contact_url(contact, format: :json)
end
