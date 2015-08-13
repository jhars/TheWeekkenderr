class SessionsController < ApplicationController
  	
  	def new
      # redirect user if already logged in
      	if current_user
        		# redirect_to profile_path
        		redirect_to '/'
      	else
        		render :new
      	end
    	end

  	def create
          user = User.find_by(email:params[:sessions][:email]).try(:authenticate, params[:sessions][:password])
          
          if user
              session[:user_id] = user.id
              # redirect_to profile_path
              redirect_to '/'
          else
              flash[:error] = "Sorry, wrong email or password"
              # redirect_to login_path
              redirect_to '/'
          end
      end
  
end
