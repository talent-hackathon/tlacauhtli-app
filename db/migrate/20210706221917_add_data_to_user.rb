# frozen_string_literal: true

class AddDataToUser < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :photo, :string
    add_column :users, :adress, :string
  end
end
