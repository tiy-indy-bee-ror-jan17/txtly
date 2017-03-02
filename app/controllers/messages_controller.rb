class MessagesController < ApplicationController

  before_action :require_user, only: [:create]

  def index
    if params[:user_id]
      @messages = Message.where(user_id: params[:user_id]).order(created_at: :desc)
    else
      @messages = Message.order(created_at: :desc)
    end
    render json: @messages
  end

  def create
    @message = current_user.messages.new(message_params)
    if @message.save
      render json: @message
    else
      render json: @message.errors.full_messages, status: 400
    end
  end

  private

  def message_params
    params.permit(:body)
  end

end
