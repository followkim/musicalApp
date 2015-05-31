json.array!(@shows) do |show|
  json.extract! show, :id, :name, :picture, :desc, :opened, :link
  json.url show_url(show, format: :json)
end
