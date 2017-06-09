module Api
  module V1
    class HistoriesController < ApplicationController

      def index
        @histories = History.all
        render json: @histories
      end
    end

  end
end