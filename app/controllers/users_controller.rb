class UsersController < ApplicationController

	# before_filter :authorize, except: [:index, :show]

	def index
	end

	def new
	  @user = User.new
	  render :new
	end
	#line 14 test

	def create
	  user = User.new(user_params)
	  if user.save
	  	flash[:notice] = "Successfully created new User!"
	  	redirect_to '/'
	  else
	  	flash[:error] = user.errors.full_messages.join(", ")
	  	redirect_to '/signup'
	  end
	end

	# def create
	#     # redirect user if already logged in
	#     if current_user
	#       redirect_to profile_path
	#     else
	#       user = User.new(user_params)
	#       if user.save
	#         session[:user_id] = user.id
	#         flash[:notice] = "Successfully signed up."
	#         # redirect_to "/profile"
	#         # refactored with route helpers:
	#         redirect_to profile_path
	#       else
	#         flash[:error] = user.errors.full_messages.join(', ')
	#         # redirect_to "/signup"
	#         # refactored with route helpers:
	#         redirect_to signup_path
	#       end
	#     end
	#   end









	def show
	end

	def edit
	end

	def update
	end

	def destroy
	end

	private

    	def user_params
      		params.require(:user).permit(:f_name, :l_name, :email, :password)
    	end


end

