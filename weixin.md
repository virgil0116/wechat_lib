# 微信的接口

###### [微信测试公众号地址](https://mp.weixin.qq.com/debug/cgi-bin/sandboxinfo?action=showinfo&t=sandbox/index)
###### [微信公众平台开发文档地址](https://mp.weixin.qq.com/wiki?t=resource/res_main&id=mp1445241432)
###### [公众号接口权限说明](https://mp.weixin.qq.com/wiki?t=resource/res_main&id=mp1433401084)
###### [参考lanrion/weixin_authorize](https://github.com/lanrion/weixin_authorize)


##### 基础支持-获取access_token - GET
https://api.weixin.qq.com/cgi-bin/token?grant_type=client_credential&appid=APPID&secret=APPSECRET

##### 获取用户基本信息（包括UnionID机制）- GET
https://api.weixin.qq.com/cgi-bin/user/info?access_token=ACCESS_TOKEN&openid=OPENID&lang=zh_CN

##### 获取用户列表 - GET
https://api.weixin.qq.com/cgi-bin/user/get?access_token=ACCESS_TOKEN&next_openid=NEXT_OPENID

##### 自定义菜单创建接口 - POST
https://api.weixin.qq.com/cgi-bin/menu/create?access_token=ACCESS_TOKEN

##### 自定义菜单查询接口 - GET
https://api.weixin.qq.com/cgi-bin/menu/get?access_token=ACCESS_TOKEN

##### 自定义菜单删除接口 - GET
https://api.weixin.qq.com/cgi-bin/menu/delete?access_token=ACCESS_TOKEN


#### 客服接口-发送消息
https://api.weixin.qq.com/cgi-bin/message/custom/send?access_token=ACCESS_TOKEN






