class SessionsController < ApplicationController
  
  def create
    user = User.find_by :email => params[:email]
    if user.present? && user.authenticate(params[:password])
        session[:user_id] = user.id
        render json: {
          status: :created,
          logged_in: true,
          user: user
        }
      else
        render json: { 
          status: 401,
          errors: ['No such user', 'Please verify credentials and try again or signup']
        }
      end
  end

  def logged_in
    if logged_in? && current_user
      render json: {
        logged_in: true,
        user: current_user
      }
    else
      render json: {
        logged_in: false,
        message: 'No such user'
      }
    end
  end

  def logout
    session[:user_id] = nil
    render json: { status: 200, logged_out: true }
  end

  def destroy
    logout!
    render json: {
      status: 200,
      logged_out: true
    }
  end

  def session_params
    params.require(:user).permit(:name, :email, :password)
  end
end