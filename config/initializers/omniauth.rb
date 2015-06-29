# Tells Rails to use bcrypt/omniauth

Rails.application.config.middleware.use OmniAuth::Builder do

	# Tell OmniAuth to use the strategy called identity.
	provider :identity

	# TODO Other providers to add: Twitter, Facebook, Google, etc
end

