class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :init_layout

  def init_layout
    @emails_for_menu = Email.all
    @new_message = Message.new
    @admin_panel_for_menu = AdminPanel.all
  end
end
