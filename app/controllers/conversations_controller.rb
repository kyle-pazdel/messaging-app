class ConversationsController < ApplicationController
  before_action :authenticate_user

  def index
    render json: { message: "This route works!" }
  end

  def show
    render json: { message: "This route works!" }
  end
end
