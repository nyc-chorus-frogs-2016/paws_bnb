class DogsController < ApplicationController
  def index
    @dogs = Dog.all
  end


  def new
    @dog = Dog.new
  end

  def create
    @dog = Dog.new(dog_params)
    if @dog.save
      redirect_to '/'
    else
      render :new
    end
  end

  def show
    @dog = Dog.find_by(id: params[:id])
    @matching = @dog.matchings.new
  end




private

  def dog_params
    params.require(:dog).permit(:name, :breed, :sex, :zip, :is_neutered, :description, :age_range, :foster_start, :foster_end).merge(owner_id: current_user.id)
  end

end
