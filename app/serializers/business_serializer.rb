class BusinessSerializer < ActiveModel::Serializer
  attributes :id, :name, :status
  has_many :subscribers
end
