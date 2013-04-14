class MainController < ApplicationController
  def index

  end

  def get_messages
    @messages = Email.find(params[:email_id]).messages

    render 'get_messages.js.erb'
  end

  def get_message_body
    @message = Message.find(params[:message_id])

    render 'get_message_body.js.erb'
  end
end