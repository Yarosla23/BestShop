class AddDescriptionToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :photo, :string
    add_column :users, :age, :integer
    add_column :users, :sity, :string
  end
end
