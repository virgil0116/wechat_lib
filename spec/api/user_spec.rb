# encoding: utf-8
require 'spec_helper'

RSpec.describe WechatLib::Api::User do

  $client.authenticate

  describe 'can get a user info' do
    user_info = $client.user(ENV['OPENID'])
    puts user_info
  end

  describe 'can get users infos' do
    # $client.get_access_token
    followers = $client.followers
    puts followers
  end

end

