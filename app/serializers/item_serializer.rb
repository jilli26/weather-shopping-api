class ItemSerializer < ActiveModel::Serializer
  attributes :id, :name, :brand, :category, :url, :image

  has_many :likes
  has_many :user_items
  has_many :users, through: :user_items
end
