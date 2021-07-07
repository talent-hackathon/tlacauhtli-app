# frozen_string_literal: true

class Product < ApplicationRecord
  belongs_to :business
  has_many :orders
end
