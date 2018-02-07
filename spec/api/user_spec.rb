# encoding: utf-8
require 'spec_helper'

RSpec.describe WechatLib::Api::User do

  it 'can get a user info' do
    user_info = $client.user(ENV['OPENID'])
    expect(user_info['openid']).to eq(ENV['OPENID'])
    puts user_info
  end

  it 'can get users infos' do
    # $client.get_access_token
    followers = $client.followers
    expect(followers.keys).to eq(['total', 'count', 'data', 'next_openid'])
    puts followers
  end

end

