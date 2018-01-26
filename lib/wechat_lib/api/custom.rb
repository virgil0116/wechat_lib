# encoding: utf-8

module WechatLib
  module Api
    module Custom

      # 发送文本消息
      #   {
      #       "touser":"OPENID",
      #       "msgtype":"text",
      #       "text":
      #           {
      #               "content":"Hello World"
      #           }
      #   }
      def send_text_custom(to_user, content)
        message = default_options(to_user).merge({msgtype: 'text', text: {content: content}})
        JSON.parse(RestClient.post(custom_base_url, MultiJson.dump(message)))
      end

      # 发送图片、语音消息
      # {
      #     "touser":"OPENID",
      #     "msgtype":"image", (voice)
      #     "image":
      #         {
      #             "media_id":"MEDIA_ID"
      #         }
      # }
      def send_media_custom(to_user, media_id, msgtype)
        message = default_options(to_user).merge({msgtype: msgtype,image: {media_id: media_id}})
        JSON.parse(RestClient.post(custom_base_url, MultiJson.dump(message)))
      end


      private
      # https://api.weixin.qq.com/cgi-bin/message/custom/send?access_token=ACCESS_TOKEN
      def custom_base_url
        "#{endpoint}/message/custom/send?#{access_token_param}"
      end

      def default_options(to_user)
        {touser: to_user, msgtype: ''}
      end

    end
  end
end
