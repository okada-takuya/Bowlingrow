json.array!(@users) do |user|
  json.extract! user, :id, :name, :position_id, :team_id, :lean_id
  json.url user_url(user, format: :json)
end
