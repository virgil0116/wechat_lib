# encoding: utf-8

module WechatLib
  module Api
    module Custom
      # https://mp.weixin.qq.com/wiki?t=resource/res_main&id=mp1421140547

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
        http_post(custom_base_url, MultiJson.dump(message))
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
        http_post(custom_base_url, MultiJson.dump(message))
      end

      # 发送视频消息
      # {
      #     "touser":"OPENID",
      #     "msgtype":"video",
      #     "video":
      #         {
      #             "media_id":"MEDIA_ID",
      #             "thumb_media_id":"MEDIA_ID",
      #             "title":"TITLE",
      #             "description":"DESCRIPTION"
      #         }
      # }



      # 发送音乐消息
      # {
      #     "touser":"OPENID",
      #     "msgtype":"music",
      #     "music":
      #         {
      #             "title":"MUSIC_TITLE",
      #             "description":"MUSIC_DESCRIPTION",
      #             "musicurl":"MUSIC_URL",
      #             "hqmusicurl":"HQ_MUSIC_URL",
      #             "thumb_media_id":"THUMB_MEDIA_ID"
      #         }
      # }



      # 发送图文消息（点击跳转到外链） 图文消息条数限制在8条以内，注意，如果图文数超过8，则将会无响应。
      # {
      #     "touser":"OPENID",
      #     "msgtype":"news",
      #     "news":{
      #         "articles": [
      #             {
      #                 "title":"Happy Day",
      #                 "description":"Is Really A Happy Day",
      #                 "url":"URL",
      #                 "picurl":"PIC_URL"
      #             },
      #             {
      #                 "title":"Happy Day",
      #                 "description":"Is Really A Happy Day",
      #                 "url":"URL",
      #                 "picurl":"PIC_URL"
      #             }
      #         ]
      #     }
      # }


      # 发送图文消息（点击跳转到图文消息页面） 图文消息条数限制在8条以内，注意，如果图文数超过8，则将会无响应。
      # {
      #     "touser":"OPENID",
      #     "msgtype":"mpnews",
      #     "mpnews":
      #         {
      #             "media_id":"MEDIA_ID"
      #         }
      # }


      # 发送卡券
      # {
      #     "touser":"OPENID",
      #     "msgtype":"wxcard",
      #     "wxcard":{
      #         "card_id":"123dsdajkasd231jhksad"
      #     },
      # }



      # 发送小程序卡片（要求小程序与公众号已关联）
      # {
      #     "touser":"OPENID",
      #     "msgtype":"miniprogrampage",
      #     "miniprogrampage":
      #         {
      #             "title":"title",
      #             "appid":"appid",
      #             "pagepath":"pagepath",
      #             "thumb_media_id":"thumb_media_id"
      #         }
      # }








      private
      # https://api.weixin.qq.com/cgi-bin/message/custom/send?access_token=ACCESS_TOKEN
      def custom_base_url
        '/message/custom/send'
      end

      def default_options(to_user)
        {touser: to_user, msgtype: ''}
      end

    end
  end
end
