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
      @user.patientlist = []
      log_in @user
      if @user.admin == false
        flash[:success] = "Welcome to Pill Project"
      else
        flash[:success] = "Welcome to Pill Project. You are now an Admin"
      end
      redirect_to @user
    else
      render 'new'
    end
  end

  def new
    @user = User.new
  end
  
  def edit
    @user = User.find(user_params)#params[:id])
   # @user.push(newpatient_params);
  #  redirect_to "/users/#{@user.id}"
    #patientid = 
    #@user.patientlist.push(patientid)
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
  
  def newpatient_params
    params.require(:user).permit(:patientlist)
  end
end

