class ApplicationController < ActionController::Base
	# Prevent CSRF attacks by raising an exception.
	# For APIs, you may want to use :null_session instead.
	protect_from_forgery with: :exception

	helper_method :current_user, :is_me?, :is_admin?, :check_login
	
	def current_user
		if session[:user_id]
			@current_user ||= User.find(session[:user_id])
		else
			@current_user = nil
		end
	end

	def check_login
		unless authorized? #logged_in?
			redirect_to "/auth/identity"
		end
	end

	def logged_in?
		if session[:user_id]
			return true
		else
			return false
		end
	end

	def is_me?(user)
		return session[:user_id] == user.id
	end
	
	def is_admin?
		if current_user
			return current_user.admin
		else
			return false
		end
	end

  protected
	# Only users that are logged in can make changes-- other users can only make GET requests
	def authorized?
		request.get? || (logged_in? && current_user.admin?)
	end
end
