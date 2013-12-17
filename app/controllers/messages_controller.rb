class MessagesController < ApplicationController
  skip_before_filter :verify_authenticity_token
  def index
    @messages = Message.all
  end


  def new
    @message = Message.new
    @messages = Message.all
  end

  def create
    params.permit!
    @message = Message.new(params[:message])
    @message.save
  end

  private
  def message_params
    #params.require(:message).permit(:content)
  end

end
