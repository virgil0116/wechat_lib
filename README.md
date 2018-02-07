# WechatLib

## Installation

Add this line to your application's Gemfile:

  `gem 'weixin_lib'`
  
  Or
  
  `gem 'weixin_lib', git: "https://github.com/virgil0116/wechat_lib.git"`

And then execute:

  `$ bundle`

Or install it yourself as:

  `$ gem install weixin_lib`

## Usage

### Init a `client`

```ruby

$client ||= WeixinAuthorize::Client.new(ENV["APPID"], ENV["APPSECRET"])

```

If you use ** Redis ** to store your access_token, you can also specify the `key`:

```ruby
$client ||= WeixinAuthorize::Client.new(ENV["APPID"], ENV["APPSECRET"], 'your_store_key')
```

### Configure

* create file in: config/initializers/wechat_lib.rb

```ruby
require 'redis'
require 'redis-namespace'
require 'wechat_lib'
# don't forget change namespace
redis = Redis.new(:host => '127.0.0.1', :port => '6379')
# We suggest you use a special db in Redis, when you need to clear all data, you can use flushdb command to clear them.
redis.select(3)
# Give a special namespace as prefix for Redis key, when your have more than one project used weixin_authorize, this config will make them work fine.
redis = Redis::Namespace.new('your_app_name:wechat_lib', :redis => redis)
WechatLib.configure do |config|
  config.redis = redis
end
```

### 获取用户管理信息

* [获取用户基本信息](https://mp.weixin.qq.com/wiki?t=resource/res_main&id=mp1421140839)

  `user_info = $client.user(ENV["OPENID"])`

* [获取关注者列表](https://mp.weixin.qq.com/wiki?t=resource/res_main&id=mp1421140840)

  `followers = $client.followers`

### 自定义菜单

* [自定义菜单创建接口](https://mp.weixin.qq.com/wiki?t=resource/res_main&id=mp1421141013)

  `response = $client.create_menu(menu)   # Hash or Json`

* [自定义菜单查询接口](https://mp.weixin.qq.com/wiki?t=resource/res_main&id=mp1421141014)

  `response = $client.menu`

* [自定义菜单删除接口](https://mp.weixin.qq.com/wiki?t=resource/res_main&id=mp1421141015)

  `response = $client.delete_menu`

### [发送客服信息](https://mp.weixin.qq.com/wiki?t=resource/res_main&id=mp1421140547)

* 发送文本信息
  `send_text_custom(to_user, content)`

* 发送图片信息
 `send_image_custom(to_user, media_id, msgtype)`

* 发送语音消息
  `send_voice_custom(to_user, media_id)`
  
  

  
  
  
  
  
  
  
  
  
  

