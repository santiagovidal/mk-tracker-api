module Api
  module V1
    class TracksController < Api::V1::ApiController
      def index
        @tracks = Track.alphabetical
      end

      def stats
        tracks = Track.includes(:user_results)
        stats_by_track = tracks.inject({}) do |stats_by_track, track|
          stats_by_track[track.id] = track.wins_by_user
          stats_by_track
        end

        render json: { stats: stats_by_track }
      end
    end
  end
end
