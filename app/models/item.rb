class Item < ApplicationRecord
  has_many :likes
  has_many :user_items
  has_many :users, through: :user_items 
  belongs_to :weather
end
