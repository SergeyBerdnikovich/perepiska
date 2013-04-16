class MainController < ApplicationController
  def index

  end

  def get_messages
    @messages = Email.find(params[:email_id]).messages

    respond_to do |format|
      format.html # get_messages.html.erb
      format.json { render json: @head }
      format.js
    end
  end

  def get_message_body
    @message = Message.find(params[:message_id])

    respond_to do |format|
      format.html # get_message_body.html.erb
      format.json { render json: @head }
      format.js
    end
  end

  def get_admin_panel
    @admin_panel = AdminPanel.find(params[:admin_panel_id])

    respond_to do |format|
      format.html # get_admin_panel.html.erb
      format.json { render json: @head }
      format.js
    end
  end
end