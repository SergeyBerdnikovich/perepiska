class MessagesController < ApplicationController
  # POST /articles
  # POST /articles.json
  def create
    @messsage = Message.new(params[:message])
    @messsage.email_from = 'admin@gmail.com'

    respond_to do |format|
      if @messsage.save
        format.html { redirect_to root_path, notice: 'Message was successfully created.' }
      else
        format.html { redirect_to root_path, notice: 'Message was not created.' }
      end
    end
  end
end