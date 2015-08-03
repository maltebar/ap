json.array!(@ownerships) do |ownership|
  json.extract! ownership, :id
  json.url ownership_url(ownership, format: :json)
end
