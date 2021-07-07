# frozen_string_literal: true

class Business < ApplicationRecord
  has_many :products, dependent: :destroy
end
