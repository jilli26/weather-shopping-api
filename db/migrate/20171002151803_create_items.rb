class CreateItems < ActiveRecord::Migration[5.1]
  def change
    create_table :items do |t|
      t.string :name
      t.string :brand
      t.string :type
      t.string :url
      t.string :image
      t.timestamps
    end
  end
end
