class PunchesController < ApplicationController
  before_action :validate_session, only: [:index]

  def index
    @user = User.find(session[:user_id])
    @punches = Punch.where("user_punched = ?", @user.id )
  end  


  def punch_back
    punch = Punch.find(params[:id])
    if !punch 
      redirect_to root_path
    else
      punch.update(punched_back: true)
      if punch.save
        redirect_to punches_path
      else
        redirect_to punches_path
      end
    end

  end

  private
  def validate_session
    if !session[:user_id]
      redirect_to root_path
    end
  end

end