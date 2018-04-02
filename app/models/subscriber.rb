class Subscriber < ApplicationRecord
  belongs_to :business
  validates_presence_of :name
  validates_presence_of :email_address, format: /@/, inclusion: %w(gmail yahoo hotmail)
end
