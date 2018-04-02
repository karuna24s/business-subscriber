class SubscriberSerializer < ActiveModel::Serializer
  attributes :id, :business_id, :name, :email_address
  belongs_to :business
end
