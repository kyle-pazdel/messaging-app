class ConversationsController < ApplicationController
  before_action :authenticate_user

  def index
    @users = User.all

    render json: @users.to_json
  end

  def create
    if Conversation.between(params[:sender_id], params[:recipient_id]).present?
      @conversation = Conversation.between(params[:sender_id], params[:recipient_id]).first
    else
      @conversation = Conversation.create!(sender_id: params[:sender_id], recipient_id: params[:recipient_id])
    end

    redirect_to conversation_messages_path(@conversation)

    # render json: @conversation
  end

end
