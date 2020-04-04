class SessionController < ApplicationController
  
  # def new 
  # end

  def login
    user = User.find_by :name => params[:name]
    # user = User.find_by :email => params[:email]
    if user.present? && user.authenticate(params[:password])
      # session[:user_id] = user.id # Log the user in
      # redirect_to root_path
      render json {user: user }
    else
      # flash[:error] = "Invalid email address or password"
      # redirect_to login_path
      render json: {errors: "Invalid username"}
    end
  end

  # def destroy
  #   session[:user_id] = nil # Log the user out
  #   redirect_to login_path
  # end
end