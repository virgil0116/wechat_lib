require 'wechat_lib/version'
require 'wechat_lib/client'

module WechatLib

  # $client = WechatLib.configure do |config|
  #   config.app_id = ''
  #   config.app_secret = ''
  # end

  class << self
    def configure(&block)
      Client.new(&block)
    end
  end
end
