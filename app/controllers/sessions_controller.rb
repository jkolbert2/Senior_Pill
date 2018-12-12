class SessionsController < ApplicationController
  
  def new
  
  end
  
  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      log_in user
      flash[:success] = "Welcome Back to Pill Project"
      redirect_to user
    else
      flash[:danger] = 'Invalid email/password combination' # Not quite right!
      render 'new'
    end
  end

  def destroy
    log_out
    redirect_to root_url
  end
  
  # skip_before_filter :set_current_user
  
  #def create
  #  render text: request.env['omniauth.auth'].to_yaml
  #end
  
end
