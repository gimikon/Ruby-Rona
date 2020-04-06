class UsersController < ApplicationController
  before_action :check_for_login, :only => [:edit, :update]
  before_action :check_for_admin, :only => [:index]

  def index
    @users = User.all
    if @users
      render json: {
        users: @users
      }
    else
      render json: {
        status: 500,
        errors: ['no users found']
      }
    end
  end

  def new
    @user = User.new
  end

  # def create
  #   @user = User.new user_params
  #   if @user.save
  #     session[:user_id] = @user.id
  #     redirect_to root_path
  #   else
  #     render :new
  #   end
  # end

  def create
    @user = User.new(user_params)
    if @user.save
      login!
      render json: {
        status: :created,
        user: @user
      }
    else 
      render json: {
        status: 500,
        errors: @user.errors.full_messages
      }
    end


  end

  private
  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
end
