# frozen_string_literal: true

json.extract! business, :id, :photo, :state_code, :adress, :rfc, :state, :business_name, :phone, :created_at,
              :updated_at
json.url business_url(business, format: :json)
