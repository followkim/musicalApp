class AddSpotifyToAlbums < ActiveRecord::Migration
  def change
    add_column :albums, :spotify, :string
  end
end
