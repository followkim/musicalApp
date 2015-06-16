class AddShowReferenceToAlbum < ActiveRecord::Migration
  def change
	add_column :albums, :show_id, :integer
  end
end
