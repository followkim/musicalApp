class Artist < ActiveRecord::Base
	has_and_belongs_to_many :shows
	validates :lname, :uniqueness => true, :presence => true
	validates :fname,  :presence => true
	
	def flName 
		"#{fname} #{lname}"
	end

	def lfName 
		"#{lname}, #{fname}"
	end
		
end
