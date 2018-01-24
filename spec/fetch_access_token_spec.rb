require 'spec_helper'

RSpec.describe WechatLib::Client do
  describe 'get_access_token' do
    it 'should return a access_token value' do
      expect($client.app_id).not_to eq('ss')
    end
  end
end