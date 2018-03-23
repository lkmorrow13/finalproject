class HomeController < ApplicationController
  def index
  	if user_signed_in?
  		@puppies = Puppy.all.reverse
  		render 'puppies/index'
  	else
  		redirect_to new_user_session_path
  	end
  end
end