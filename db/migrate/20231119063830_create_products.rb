class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string :name
      t.string :category
      t.text :description
      t.text :full_description
      t.string :color
      t.string :size
      t.float :price

      t.timestamps
    end
  end
end
