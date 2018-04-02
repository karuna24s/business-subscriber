class Business < ApplicationRecord
  has_many :subscribers, dependent: :destroy
  validates_presence_of :name
end
