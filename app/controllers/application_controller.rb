class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :init_layout

  def init_layout
    @emails_for_menu = Email.all
    @new_message = Message.new
  end
end
