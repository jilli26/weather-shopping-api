class Item < ApplicationRecord
  has_many :likes
  has_many :user_items
  has_many :users, through: :user_items

  def range=(temp_start, temp_end)
    self.temp_start = temp_start
    self.temp_end = temp_end
  end

  def range
    (temp_start..temp_end)
  end
  
end
