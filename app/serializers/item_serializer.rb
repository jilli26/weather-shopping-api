class ItemSerializer < ActiveModel::Serializer
  attributes :id

  has_many :likes
  has_many :user_items
  has_many :users, through: :user_items 
end
