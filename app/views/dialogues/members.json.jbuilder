json.array!(@dialogues) do |dialogue|
  json.extract! dialogue, :id, :name, :email
  json.url dialogue_url(dialogue, format: :json)
end
