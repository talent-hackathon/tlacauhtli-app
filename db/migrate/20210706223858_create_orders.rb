# frozen_string_literal: true

class CreateOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :orders do |t|
      t.integer :amound
      t.belongs_to :users, foreign_key: true
      t.belongs_to :product, foreign_key: true
      t.string :status
      t.float :total

      t.timestamps
    end
  end
end
