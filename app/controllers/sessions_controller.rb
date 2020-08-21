class SessionsController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.find_by_email(user_params[:email])
    if @user && @user.authenticate(user_params[:password])
      session[:user_id] = @user.id 
      redirect_to user_routes_path(current_user)
    else
      render :new
    end
  end

  def omniauth
    @user = User.find_or_create_by(uid: auth['uid'], provider: auth['provider']) do |u|
      u.username = auth['info']['name']
      u.email = auth['info']['email']
      # u.password = SecureRandom.hex(16)
    end 
    if @user.valid?
      session[:user_id] = @user.id
      redirect_to  user_routes_path(current_user)
    else
      flash[:message] = user.errors.full_messages.join(", ")
      redirect_to root_path
    end
  end 

  def destory
    session.clear
    redirect_to root_path
  end

  private
    def user_params
      params.require(:user).permit(:email, :password)
    end  

    def auth
      request.env['omniauth.auth']
    end 
end
