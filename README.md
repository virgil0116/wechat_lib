# WechatLib

## Installation

Add this line to your application's Gemfile:

  `gem 'weixin_lib'`

And then execute:

  `$ bundle`

Or install it yourself as:

  `$ gem install weixin_lib`

## Usage

### Init a `client`

```ruby

$client ||= WeixinAuthorize.configure do |config|
  config.app_id     = ENV["APPID"]
  config.app_secret = ENV["APPSECRET"]
  config.expired_at = Time.now.to_i
end

# Or

$client ||= WeixinAuthorize::Client.new(ENV["APPID"], ENV["APPSECRET"])

```

### 获取用户管理信息

* [获取用户基本信息](https://mp.weixin.qq.com/wiki?t=resource/res_main&id=mp1421140839)

  `user_info = $client.user(ENV["OPENID"])`

* [获取关注者列表](https://mp.weixin.qq.com/wiki?t=resource/res_main&id=mp1421140840)

  `followers = $client.followers`

### 自定义菜单

* [自定义菜单创建接口](https://mp.weixin.qq.com/wiki?t=resource/res_main&id=mp1421141013)
  `response = $client.create_menu(menu)`

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
  
  

##

> 对于多用户微信营销平台的对接，需要把每次的expired_at, access_token保存在Redis中,每次使用，则可以从Redis中获取expired_at和access_token, 即 `@client = WeixinAuthorize::Client.new(appid, appsecret, expired_at, access_token)`, 获取access_token，则仍然是：`@client.get_access_token`来获取.

  
  
  
  
  
  
  
  
  
  

