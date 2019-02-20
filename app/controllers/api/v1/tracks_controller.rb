module Api
  module V1
    class TracksController < Api::V1::ApiController
      def index
        @tracks = Track.alphabetical
      end

      def stats
        initial_hash = Track.pluck(:id).inject({}) { |hash, id| hash[id] = {}; hash }
        grouped_counts = UserResult.first_positions.group(:track_id, :user_id).count

        counts_by_user_and_track = grouped_counts.inject(initial_hash) do |stats, data|
          track_id, user_id = data[0]
          count = data[1]

          stats[track_id] ||= {}
          stats[track_id][user_id] = count
          stats
        end

        render json: counts_by_user_and_track
      end
    end
  end
end
