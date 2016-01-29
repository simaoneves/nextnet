class SessionsController < ApplicationController
  
  def new
    if session[:user_id]
      user = User.find(session[:user_id])
      redirect_to user_path(user)
    end
    @user = User.new
  end

  def login
    @user = User.find_by(email: params[:session][:email].downcase)
    pass = params[:session][:password]
    if @user.authenticate(pass)
      session[:user_id] = @user.id
      redirect_to user_path(@user)
    else
      flash[:danger] = 'Oops... try again'
      render 'new'
    end
  end

  def logout
    session[:user_id] = nil
    redirect_to root_path
  end
end
