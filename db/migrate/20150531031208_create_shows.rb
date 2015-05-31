class CreateShows < ActiveRecord::Migration
  def change
    create_table :shows do |t|
      t.string :name
      t.string :picture
      t.text :desc
      t.date :opened
      t.string :link

      t.timestamps null: false
    end
  end
end
