json.array!(@albums) do |album|
  json.extract! album, :id, :name, :picture, :desc, :released
  json.url album_url(album, format: :json)
end
