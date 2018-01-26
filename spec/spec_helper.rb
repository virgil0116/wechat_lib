require 'rspec'
require "bundler/setup"
require "wechat_lib"

# If you want test, change your weixin test profile
ENV['APPID']      ='wxe4996ba606bcd25b'
ENV['APPSECRET']  ='1a5721c25dd3430723abc41fa59f4efe'
ENV['OPENID']     ='oNpko1LoJbtUHdm77bmLs5DhRNGA'
ENV['TEMPLATE_ID']='xxx'

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
