class CreateItems < ActiveRecord::Migration[5.1]
  def change
    create_table :items do |t|
      t.string :name
      t.string :brand
      t.string :category
      t.integer :temp_start
      t.integer :temp_end
      t.string :url
      t.string :image
      t.timestamps
    end
  end
end
