# frozen_string_literal: true

module Api
  module V1
    class MainController < ApplicationController
      def index
        @value = [1, 2, 4, 5]
        @users = User.all
        render json: @users
      end
    end
  end
end
