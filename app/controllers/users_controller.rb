class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    @reminders = current_user.reminders.page(params[:page]).per_page(5)
  end

  def create
    @user = User.new(user_params)
    if @user.save
      log_in @user
      flash[:success] = "Welcome to Pill Project"
      redirect_to @user
    else
      render 'new'
    end
  end

  def new
    @user = User.new
  end

  def destroy
        @user = User.find params[:id]
        @user.destroy
        redirect_to users_path
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password,
                                   :password_confirmation)
  end
  
end

