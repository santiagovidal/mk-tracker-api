module Api
  module Concerns
    module ActAsApiRequest
      extend ActiveSupport::Concern

      included do
        skip_before_action :verify_authenticity_token
        before_action :check_json_request
      end

      def check_json_request
        return if request_content_type && request_content_type.match?(/json/)
        render json: { error: I18n.t('api.errors.invalid_content_type') }, status: :not_acceptable
      end

      def render_error(status, message, _data = nil)
        response = {
          error: message
        }
        render json: response, status: status
      end

      def request_content_type
        request.content_type
      end
    end
  end
end
