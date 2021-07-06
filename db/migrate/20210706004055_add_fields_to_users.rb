class AddFieldsToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :first_name, :String
    add_column :users, :last_name, :String
    add_column :users, :phone, :String
    add_column :users, :rfc, :string
  end
end
