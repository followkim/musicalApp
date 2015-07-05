class User < ActiveRecord::Base

	validates :name, :uniqueness => true, :presence => true
	validates :provider,  :presence => true
	validates :uid,  :uniqueness => true, :presence => true

	# This is a class method, callable from SessionsController
	# hense the 'User'
	def User.create_with_omniauth(auth)

		user = User.new()
		user.provider = auth["provider"]
		user.uid = auth["uid"]
		user.name = auth["info"]["name"]
		user.save

		return user
	end
end
