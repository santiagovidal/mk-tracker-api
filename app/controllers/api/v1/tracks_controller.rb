module Api
  module V1
    class TracksController < Api::V1::ApiController
      def index
        @tracks = Track.alphabetical
      end

      def stats
        tracks = Track.includes(:user_results)
        stats_by_track = tracks.map do |track|
          track.wins_by_user.merge(id: track.id)
        end

        render json: { stats: stats_by_track }
      end
    end
  end
end
