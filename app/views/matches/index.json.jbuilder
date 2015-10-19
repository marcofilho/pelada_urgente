json.array!(@matches) do |match|
  json.extract! match, :id, :start, :end, :max_players, :visibility, :place_id
  json.url match_url(match, format: :json)
end
