class CreateAlbums < ActiveRecord::Migration
  def change
    create_table :albums do |t|
      t.string :name
      t.string :picture
      t.text :desc
      t.date :released

      t.timestamps null: false
    end
  end
end
