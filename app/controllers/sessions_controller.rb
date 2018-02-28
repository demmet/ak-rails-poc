class SessionsController < ApplicationController
  
  def new
    # Login form
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      log_in user
      redirect_to people_url
    else
      flash.now[:danger] = 'Invalid email/password combination'
      render 'home'
    end
  end

  def destroy
    log_out
    redirect_to root_url
  end

  def home
    # Home page
  end

  def configurations
    # Config page
  end

  def save_configurations
    # Save config post
  end

end
