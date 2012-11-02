require 'spec_helper'

describe OmniAuth::Strategies::Wepay do
  subject do
    OmniAuth::Strategies::Wepay.new({})
  end

  context 'client options' do
    it 'has the correct site' do
      subject.options.client_options.site.should eq'https://stage.wepayapi.com/v2'
    end

    it 'has the correct authorize url' do
      subject.options.client_options.authorize_url.should eq'https://stage.wepay.com/v2/oauth2/authorize'
    end

    it 'has the correct token url' do
      subject.options.client_options.token_url.should eq'https://stage.wepayapi.com/v2/oauth2/token'
    end
  end

  context 'scope' do
    it 'has manage accounts, view balance, collect payments, refund payments, and view user scope' do
      subject.options.scope.should eq 'manage_accounts,view_balance,collect_payments,refund_payments,view_user'
    end
  end
end