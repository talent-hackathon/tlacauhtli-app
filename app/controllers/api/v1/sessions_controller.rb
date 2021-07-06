# frozen_string_literal: true

module Api
  module V1
    class SessionsController < ApplicationController
      protect_from_forgery with: :null_session

      def create
        user = User.where(email: params[:email]).first

        if user.valid_password?(params[:password])
          render json: user.as_json(only: %i[email role]), status: :created
        else
          head(:unauthorized)
        end
      end

      def destroy; end
    end
  end
end
