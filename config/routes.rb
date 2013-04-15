Perepiska::Application.routes.draw do
  root :to => 'main#index'

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  match 'main/get_messages' => 'main#get_messages'
  match 'main/get_message_body' => 'main#get_message_body'
  match 'main/get_admin_panel' => 'main#get_admin_panel'

  resource :messages, :only => [:create]
end
