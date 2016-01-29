class InterestsController < ApplicationController

  def new
    @interest = Interest.new
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
      
    end
end
