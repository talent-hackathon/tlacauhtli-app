# frozen_string_literal: true

json.extract! order, :id, :amound, :user, :product, :status, :total, :created_at, :updated_at
json.url order_url(order, format: :json)
