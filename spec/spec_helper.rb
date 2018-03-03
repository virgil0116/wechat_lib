require 'rspec'
require "bundler/setup"
require "wechat_lib"
require "multi_json"
require 'redis'
require 'redis-namespace'

require 'pry-rails'

redis = Redis.new(:host => '127.0.0.1', :port => '6379')
redis_namepsace_ns = Redis::Namespace.new("wechat_#{Time.now.to_i}:wechat_lib", :redis => redis)
WechatLib.configure do |config|
  config.redis = redis
end

# If you want test, change your weixin test profile
ENV['APPID']      = 'wxe4996ba606bcd25b'  # vvv的微信测试号
ENV['APPSECRET']  = '1a5721c25dd3430723abc41fa59f4efe'
ENV['OPENID']     = 'oNpko1LoJbtUHdm77bmLs5DhRNGA'   # 麦子的openid
ENV['TEMPLATE_ID']= 'xxx'
# ENV['APPID']      = 'wxe7da46a8d471b1b4'        # lx
# ENV['APPSECRET']  = 'ddce70051674d37e3381dcc63db221e1'
# ENV['OPENID']     = 'omym6v28x2dujmiNfvqr2KaFfypc'
# ENV['TEMPLATE_ID']= 'xxx'

# $client ||= WechatLib.configure do |config|
#   config.app_id     = ENV['APPID']
#   config.app_secret = ENV['APPSECRET']
#   config.expired_at = Time.now.to_i
# end

$client = WechatLib::Client.new(ENV['APPID'], ENV['APPSECRET'])

RSpec.configure do |config|
  # Enable flags like --only-failures and --next-failure
  config.example_status_persistence_file_path = ".rspec_status"

  # Disable RSpec exposing methods globally on `Module` and `main`
  config.disable_monkey_patching!

  config.expect_with :rspec do |c|
    c.syntax = :expect
  end
end
