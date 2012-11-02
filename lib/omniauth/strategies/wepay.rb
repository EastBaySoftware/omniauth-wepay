require 'omniauth-oauth2'

module OmniAuth
  module Strategies
    class Wepay < OmniAuth::Strategies::OAuth2

      option :name, 'wepay'
      option :scope, 'manage_accounts,view_balance,collect_payments,refund_payments,view_user'

      option :client_options, {
        :site           => 'https://stage.wepayapi.com/v2',
        :authorize_url  => 'https://stage.wepay.com/v2/oauth2/authorize',
        :token_url      => 'https://stage.wepayapi.com/v2/oauth2/token'
      }

      uid { raw_info['user_id'] }

      info do
        {
          'email'       => raw_info['email'],
          'first_name'  => raw_info['first_name'],
          'last_name'   => raw_info['last_name'],
          'name'        => "#{raw_info['first_name']} #{raw_info['last_name']}"
        }
      end

      extra do
        {:raw_info => raw_info}
      end

      def raw_info
        # for some reason the session state is deleted before retrieving user data, so we reset here
        session['omniauth.state'] ||= request.params['state']
        @raw_info ||= access_token.get("#{options.client_options[:site]}/user").parsed
      end
    end
  end
end