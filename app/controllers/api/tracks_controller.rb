module Api
  module V1
    class TracksController < Api::V1::ApiController
      def index
        binding.pry
        render json: { online: true }
      end
    end
  end
end
