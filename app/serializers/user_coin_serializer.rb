class UserCoinSerializer < ActiveModel::Serializer
  attributes :id, :name, :price
  has_one :user
end
