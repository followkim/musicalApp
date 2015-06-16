class Show < ActiveRecord::Base
	validates :name,  :presence => true	
	has_many :albums,-> { order 'released' }
	has_and_belongs_to_many :keywords,-> { order 'name' }
	has_and_belongs_to_many :artists,-> { order 'lname' }	
#	has_many :comments
	accepts_nested_attributes_for :keywords, :allow_destroy => true 

	def artists_link
		artists.collect { |a| link_to(a.flName, artist_path(a)) }.join ', '
	end
	
end

