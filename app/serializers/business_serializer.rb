class BusinessSerializer < ActiveModel::Serializer
  attributes :id, :business_name
  has_many :subscribers
end
