json.array!(@matches) do |match|
  json.extract! match, :id, :name, :dates
  json.url match_url(match, format: :json)
end
