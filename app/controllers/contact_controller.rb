class ContactController < ApplicationController

  def create
    @message = Message.new(params[:message])

    NotificationsMailer.new_message(@message).deliver if @message.valid?

    redirect_to root_path
  end
end
