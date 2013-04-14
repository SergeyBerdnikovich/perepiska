class Message < ActiveRecord::Base
  belongs_to :email
  attr_accessible :email_from, :subject, :text
end
