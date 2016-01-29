class InterestsController < ApplicationController

  def new
    @interest = Interest.new
    @user = current_user
  end

  def create
    interest = Interest.new(interests_params)
    if interest.save!
      flash :notice, 'Interest saved with success'
      redirect @user
    else
      flash :notice, 'Something went wrong saving your interest'
      render :new
    end
  end

  def destroy
  end

  def edit
  end

  private

    def interests_params
      params.require(:interest).permit(:name, :user_id)
    end
end
