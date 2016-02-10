class MessagesController < ApplicationController

  def new
    @msg = Message.new
    @dog = Dog.find(params[:dog_id])
  end

  def create
    @dog = Dog.find(params[:dog_id])
    @message = Message.new(msg_params)
    if @message.save
      redirect_to "/dogs/#{@dog.id}"
    else
      render :new
    end
  end

  # def show
  #   @dog = Dog.find_by(id: params[:id])
  #   @msgs = Message.where(:user_id => @userid).order('updated_at DESC')
  # end




private

  def msg_params
    params.require(:message).permit(:title, :content, :owner_id).merge(foster_parent_id: current_user.id)
  end

end
