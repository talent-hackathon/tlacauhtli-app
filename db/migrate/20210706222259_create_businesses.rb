# frozen_string_literal: true

class CreateBusinesses < ActiveRecord::Migration[6.1]
  def change
    create_table :businesses do |t|
      t.string :photo
      t.string :state_code
      t.string :adress
      t.string :rfc
      t.string :state
      t.string :business_name
      t.integer :phone

      t.timestamps
    end
  end
end
