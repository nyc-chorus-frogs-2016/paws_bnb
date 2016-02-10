class FosterParentRatingsController < ApplicationController
  def create
      @user = User.find(params[:user_id])
    @rating = @user.received_ratings.build(rating_params)
    if @rating.save

      redirect_to "/users/#{@rating.foster_parent_id}"
    else
      render root_path
    end
  end

  private

  def rating_params
    params.require(:foster_parent_rating).permit(:rating, :comment, :foster_parent_id).merge(owner_id: current_user.id)
  end

  end
