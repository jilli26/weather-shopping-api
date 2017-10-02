class UserSerializer < ActiveModel::Serializer
  attributes :id

  has_many :user_items
  has_many :items, through: :user_items
  has_many :likes
end
