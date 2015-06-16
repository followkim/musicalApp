class CreateManyToManyTables < ActiveRecord::Migration
 
 create_table :keywords_shows, id: false do |t|
      t.belongs_to :keyword, index: true
      t.belongs_to :show, index: true
  end
 
 create_table :artists_shows, id: false do |t|
      t.belongs_to :artist, index: true
      t.belongs_to :show, index: true
  end
  
end
