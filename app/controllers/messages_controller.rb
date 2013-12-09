class MessagesController < ApplicationController
  
  def index
    @messages = current_user.sent_messages.paginate :per_page => 10, :page =>    params[:page], :order => "created_at DESC"
  end
  
  def show
    @messages = current_user.sent_messages.find(params[:id])
  end
  
  def new
    @message = current_user.sent_messages.build
    @user_friendships = current_user.user_friendships.all
  end
  
  def create
  end
  
  def index
  end
  
end
