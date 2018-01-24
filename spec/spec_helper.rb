require 'rspec'
require "bundler/setup"
require "wechat_lib"

$client ||= WechatLib.configure do |config|
  # config.app_id = ENV['app_id']
  # config.app_secret = ENV['app_secret']
  config.app_id = 'wxe4996ba606bcd25b'
  config.app_secret = '1a5721c25dd3430723abc41fa59f4efe'
  config.expired_at = Time.now.to_i
end

RSpec.configure do |config|
  # Enable flags like --only-failures and --next-failure
  config.example_status_persistence_file_path = ".rspec_status"

  # Disable RSpec exposing methods globally on `Module` and `main`
  config.disable_monkey_patching!

  config.expect_with :rspec do |c|
    c.syntax = :expect
  end
end
