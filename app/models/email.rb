class Email < ActiveRecord::Base
  attr_accessible :email
  alias_attribute :name, :email

  has_many :messages, :dependent => :destroy
end
