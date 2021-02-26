class SessionsController < ApplicationController
	
	def new
	end

	def create
		person = Person.find_by(email: params[:session][:email].downcase)

		if person && person.authenticate(params[:session][:password])
			session[:person_id] = person.id
			flash[:notice] = "Logged in successfully"
			redirect_to person
		else
			flash.now[:alert] = "There was something wrong with your login details"
			render 'new'
		end
	end

	def destroy
		session[:person_id] = nil
		flash[:notice] = "Logged out"
		redirect_to root_path
	end

end