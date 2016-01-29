class InterestsController < ApplicationController

  before_action :find_user, only: [:new, :create]

  def new
    @interest = Interest.new
  end

  def create
    interest = Interest.new(interests_params)
    if interest.save!
      flash[:notice] = 'Interest saved with success'
      redirect_to @user
    else
      flash[:notice] = 'Something went wrong saving your interest'
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

    def find_user
      @user = current_user
    end
end
