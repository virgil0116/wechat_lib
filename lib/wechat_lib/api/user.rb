# encoding: utf-8
module WechatLib
  module Api
    module User

      # 获取用户基本信息
      # https://api.weixin.qq.com/cgi-bin/user/info?access_token=ACCESS_TOKEN&openid=OPENID&lang=zh_CN
      # lang: zh_CN 简体，zh_TW 繁体，en 英语
      def user(openid, lang='zh_CN')
        user_info_url = "#{user_base_url}/info?#{access_token_param}&openid=#{openid}&lang=#{lang}"
        JSON.parse(RestClient.get(user_info_url))
      end

      # 获取用户列表
      # https://api.weixin.qq.com/cgi-bin/user/get?access_token=ACCESS_TOKEN&next_openid=NEXT_OPENID
      def users(next_openid=nil)
        users_url = "#{user_base_url}/get?#{access_token_param}&next_openid=#{next_openid}"
        JSON.parse(RestClient.get(users_url))
      end

      private
      def user_base_url
        "#{endpoint}/user"
      end

    end
  end
end
