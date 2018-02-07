require 'spec_helper'

RSpec.describe WechatLib::Api::Custom do

  let(:text_message) do
    "文本测试内容 - #{Time.now.to_s}"
  end

  it '# send a text custom message' do
    response = $client.send_text_custom(ENV['OPENID'], text_message)
    puts response
  end

  it '# send a image custom message' do
    pending("The test must have a media_id")
    this_should_not_get_executed
  end

  it '# send voice custom' do
    pending("The test must have a media_id")
    this_should_not_get_executed
  end



end
