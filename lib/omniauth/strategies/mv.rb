module OmniAuth
  module Strategies
    class Mv < OmniAuth::Strategies::OAuth2
      option :name, :mv

      option :client_options, {
          :site => "http://localhost:3000",
          :authorize_path => "/oauth/authorize"
      }

      uid do
        raw_info["id"]
      end

      info do
        {
            :email => raw_info["email"],
            :name => raw_info["name"],
            :provider => 'mv'
        }
      end

      def raw_info
        @raw_info ||= access_token.get('/users/me.json').parsed
      end
    end
  end
end