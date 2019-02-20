module Api
  module V1
    class UsersController < Api::V1::ApiController
      def index
        @users = User.order(id: :asc)
      end

      def summary

      end
    end
  end
end
