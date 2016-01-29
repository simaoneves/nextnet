class SessionsController < ApplicationController
  def login
    session[:user_id] = 1
  end

  def signup
  end

  def logout
  end
end
