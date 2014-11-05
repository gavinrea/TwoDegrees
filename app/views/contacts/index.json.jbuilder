json.array!(@contacts) do |contact|
  json.extract! contact, :id, :intro, :name, :email, :user_id, :linkedin_id
  json.url contact_url(contact, format: :json)
end
