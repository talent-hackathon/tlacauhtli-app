# frozen_string_literal: true

module Api
  module V1
    class MainController < ApplicationController
      def index
        @value = []
        render json: @value
      end
    end
  end
end
