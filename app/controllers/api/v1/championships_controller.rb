module Api
  module V1
    class ChampionshipsController < Api::V1::ApiController
      def create
        championship = Championship.create!(championship_params)
        head :no_content
      end

      private

      def championship_params
        params.require(:championship).permit(user_results_attributes: [:user_id, :track_id, :position])
      end
    end
  end
end
