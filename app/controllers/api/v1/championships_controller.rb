module Api
  module V1
    class ChampionshipsController < Api::V1::ApiController
      def create

      end

      private

      def championship_params
        params.require(:championship).permit(:races_count, user_results_attributes: [:user_id, :track_id, :position])
      end
    end
  end
end
