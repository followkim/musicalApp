class CreateSongs < ActiveRecord::Migration
  def change
    create_table :songs do |t|
      t.integer :track
      t.string :title

      t.timestamps null: false
    end
  end
end
