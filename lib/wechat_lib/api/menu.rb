# encoding: utf-8
module WechatLib
  module Api
    module Menu

      # 创建菜单
      # https://api.weixin.qq.com/cgi-bin/menu/create?access_token=ACCESS_TOKEN
      def create_menu(menu)
        create_menu_url = "#{menu_base_url}/create?#{access_token_param}"
        JSON.parse(RestClient.post(create_menu_url, menu))
      end

      # 查询菜单
      # https://api.weixin.qq.com/cgi-bin/menu/get?access_token=ACCESS_TOKEN
      def get_menu
        get_menu_url = "#{menu_base_url}/get?#{access_token_param}"
        JSON.parse(RestClient.get(get_menu_url))
      end

      # 删除菜单
      # https://api.weixin.qq.com/cgi-bin/menu/delete?access_token=ACCESS_TOKEN
      def delete_menu
        delete_menu_url = "#{menu_base_url}/delete?#{access_token_param}"
        JSON.parse(RestClient.get(delete_menu_url))
      end

      private
      def menu_base_url
        "#{endpoint}/menu"
      end

    end
  end
end
