# encoding: utf-8
require 'spec_helper'

RSpec.describe WechatLib::Api::User do

  describe 'can get a user info' do
    user_info = $client.user(ENV['openid'])
    puts user_info
  end

  describe 'can get users infos' do
    followers = $client.users
    puts followers
  end

end

