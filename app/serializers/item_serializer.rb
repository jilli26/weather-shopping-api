class ItemSerializer < ActiveModel::Serializer
  attributes :id, :name, :brand, :category, :url, :image, :temp_end, :temp_start

  has_many :likes
  has_many :user_items
  has_many :users, through: :user_items
end
