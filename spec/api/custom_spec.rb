require 'spec_helper'

RSpec.describe WechatLib::Api::Custom do

  $client.authenticate

  it 'can send a text custom message' do
    response = $client.send_text_custom(ENV['OPENID'], '测试发送文本消息')
    puts response
  end

  it 'can send a image custom message' do
    response = $client.send_image_custom(ENV['OPENID'], nil, 'image')
    puts response
    response = $client.send_voice_custom(ENV['OPENID'], nil, 'voice')
    puts response
  end



end
