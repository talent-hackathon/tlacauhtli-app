# frozen_string_literal: true

json.extract! product, :id, :photo, :name, :business, :price, :status, :amound, :unit, :state, :created_at, :updated_at
json.url product_url(product, format: :json)
