class ApplicationController < ActionController::Base
	helper_method :current_person, :logged_in?

	def current_person
		@current_person ||= Person.find(session[:person_id]) if session[:person_id]
	end

	def logged_in?
	!!current_person
	end
end
