class AddAdminFlagToUsers < ActiveRecord::Migration
  def change
	add_column :users, :admin, :boolean, :default => false, :null => false
	add_column :users, :fname, :string
	add_column :users, :lname, :string
  end
end
