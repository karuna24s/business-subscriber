class Subscriber < ApplicationRecord
  belongs_to :business
  validates_presence_of :name, :email_address
end
