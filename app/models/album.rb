class Album < ActiveRecord::Base
	validates :name,  :presence => true
	validates :show_id,  :presence => true
	belongs_to :show
end
