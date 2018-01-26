require 'byebug'
require 'json'
require 'multi_json'
require 'rest-client'
require 'wechat_lib/version'
require 'wechat_lib/api/user'
require 'wechat_lib/api/menu'
require 'wechat_lib/api/custom'
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
