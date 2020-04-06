class ApplicationController < ActionController::Base
  before_action :fetch_user

  private

  skip_before_action :verify_authenticity_token

  def fetch_user
    if session[:user_id].present?
      @current_user = User.find_by :id => session[:user_id]
      session[:user_id] = nil unless @current_user
    end
  end

#   helper_method :login!, :logged_in?, :current_user, :authorized_user?, :logout!

#   def login!
#       session[:user_id] = @user.id
#     end
#   def logged_in?
#       !!session[:user_id]
#     end
#   def current_user
#       @current_user ||= User.find(session[:user_id]) if session[:user_id]
#     end
#   def authorized_user?
#     @user == current_user
#   end
#   def logout!
#       session.clear
#   end

end
