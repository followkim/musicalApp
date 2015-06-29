class User < ActiveRecord::Base

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
