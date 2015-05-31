json.array!(@artists) do |artist|
  json.extract! artist, :id, :fname, :lname, :dob, :link
  json.url artist_url(artist, format: :json)
end
