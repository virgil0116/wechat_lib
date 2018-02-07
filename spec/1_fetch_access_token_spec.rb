require 'spec_helper'

RSpec.describe WechatLib::Client do
  describe 'get_access_token' do
    # it 'should return a access_token nil value before authenticate' do
    #   expect($client.access_token).to eq(nil)
    # end

    it 'should return a access_token after authenticate' do
      $client.authenticate
      expect($client.access_token).not_to eq(nil)
    end

    it 'should return the same access_token in the same thing twice' do
      access_token1 = $client.get_access_token
      sleep 5
      access_token2 = $client.get_access_token
      expect(access_token1).to eq(access_token2)
    end

  end
end