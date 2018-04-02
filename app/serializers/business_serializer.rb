class BusinessSerializer < ActiveModel::Serializer
  attributes :id, :business_name, :status
  has_many :subscribers
end
