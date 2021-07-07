# frozen_string_literal: true

class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.belongs_to :business, foreign_key: true
      t.string :name
      t.string :photo
      t.float :price
      t.boolean :status
      t.integer :amound
      t.string :unit
      t.string :state
      t.timestamps
    end
  end
end
