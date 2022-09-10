class MessagesController < ApplicationController
  before_action do
    @conversation = Conversation.find(params[:conversation_id])
  end

  def index
    @messages = @conversation.messages

    @message = @conversation.messages.new

    render json: @messages
  end

  # def new
  #   @message = @conversation.messages.new
  # end

  def create
    @message = @conversation.messages.new(body: params[:body], user_id: params[:user_id])
    if @message.save
      render json: @conversation
      # redirect_to conversation_messages_path(@conversation)
    end
  end
end
