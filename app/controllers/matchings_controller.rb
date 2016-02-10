class MatchingsController < ApplicationController

  def create
    @dog = Dog.find_by(id: params[:id])
    @matching = Matching.new(match_params)
    if @matching.save
      redirect_to '/'
    else
      render "dogs/#{@dog.id}"
    end
  end

  def past_match
    @dog = Dog.find_by(id: params[:id])
    render :'matchings/past_matches'
  end


  private
    def match_params
      params.require(:matching).permit(:dog_id, :foster_start, :foster_end).merge(foster_parent_id: current_user.id)
    end

end
