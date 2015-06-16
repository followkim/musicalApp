class Artist < ActiveRecord::Base
	has_and_belongs_to_many :shows
	validates :lname, :uniqueness => true
	
	def flName 
		"#{fname} #{lname}"
	end

	def lfName 
		"#{lname}, #{fname}"
	end
		
end
