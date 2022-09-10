class ConversationsController < ApplicationController
  def index
    render json: { message: "This route works!" }
  end

  def show
    render json: { message: "This route works!" }
  end
end
