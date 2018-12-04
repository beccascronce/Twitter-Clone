class AddAutoPicToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :autopic, :string
    add_column :users, :bot, :boolean
  end
end
