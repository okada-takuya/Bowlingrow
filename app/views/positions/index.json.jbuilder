json.array!(@positions) do |position|
  json.extract! position, :id, :lank, :name, :abbreviation
  json.url position_url(position, format: :json)
end
