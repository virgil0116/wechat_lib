# encoding: utf-8
module WechatLib
  module Api
    module User

      # 获取用户基本信息
      # https://api.weixin.qq.com/cgi-bin/user/info?access_token=ACCESS_TOKEN&openid=OPENID&lang=zh_CN
      # lang: zh_CN 简体，zh_TW 繁体，en 英语
      def user(openid, lang='zh_CN')
        user_info_url = "#{user_base_url}/info"
        http_get(user_info_url, {openid: openid, lang: lang})
      end

      # 获取关注者列表
      # https://api.weixin.qq.com/cgi-bin/user/get?access_token=ACCESS_TOKEN&next_openid=NEXT_OPENID
      def followers(next_openid = '')
        users_url = "#{user_base_url}/get"
        http_get(users_url, {next_openid: next_openid})
      end

      private

      def user_base_url
        '/user'
      end

    end
  end
end
