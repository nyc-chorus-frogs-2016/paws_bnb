class UsersController < ApplicationController
  # skip_before_action :ensure_current_user

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to '/'
    else
      render :new
    end
  end

  def show
    @user = User.find(params[:id])
    @foster_parent_rating = @user.received_ratings.new
  end

  def info
    @user = current_user
    render :'users/info'
  end



  private

  def user_params
    params.require(:user).permit(:username, :password, :email, :zip, :about_me)
  end


end
