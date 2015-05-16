json.array!(@lanes) do |lane|
  json.extract! lane, :id, :name, :match_id
  json.url lane_url(lane, format: :json)
end
