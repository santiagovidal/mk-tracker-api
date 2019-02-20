module Api
  module V1
    class TracksController < Api::V1::ApiController
      def index
        @tracks = Track.alphabetical
      end
    end
  end
end
