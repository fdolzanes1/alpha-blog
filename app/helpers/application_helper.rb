module ApplicationHelper

	def gravatar_for(person, options = { size: 80})
    	email_address = person.email.downcase
    	hash = Digest::MD5.hexdigest(email_address)
    	size = options[:size]
    	gravatar_url = "https://www.gravatar.com/avatar/#{hash}?s=#{size}"
    	image_tag(gravatar_url, alt: person.name, class: "rounded shadow mx-auto d-block")
  	end

  	def current_person
  		@current_person ||= Person.find(session[:person_id]) if session[:person_id]
  	end

  	def logged_in?
  		!!current_person
  	end
end
