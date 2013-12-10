class MessagesController < ApplicationController
  
  def index
    @messages = Message.all
  end
  
  def show
    @message = Message.find(params[:id])
  end
  
  def new
    @message = Message.new
    @sender = User.find(params[:sender_id])
    @sender_id = :sender_id
    @users = User.all
  end
  
  def create
    @message = Message.new(message_params)
    @message.save

    redirect_to show_users_path(id: @message.sender_id)
  end

  private
  def message_params
    params.require(:message).permit(:text, :sender_id, :receiver_id)
  end
end
