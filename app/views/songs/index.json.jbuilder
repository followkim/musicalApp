json.array!(@songs) do |song|
  json.extract! song, :id, :track, :title
  json.url song_url(song, format: :json)
end
