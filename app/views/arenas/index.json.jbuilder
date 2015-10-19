json.array!(@arenas) do |arena|
  json.extract! arena, :id, :name, :width, :length, :kind, :place_id
  json.url arena_url(arena, format: :json)
end
