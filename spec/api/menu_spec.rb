require 'spec_helper'

RSpec.describe WechatLib::Api::Menu do

  it 'can delete a weixin menu' do
    response = $client.delete_menu
    expect(response['errcode']).to eq(0)
    puts response
  end

  it 'can create a weixin menu' do
    menu = '{"button":
              [{"type":"click","name":"今日歌曲","key":"V1001_TODAY_MUSIC"},
               {"type":"click","name":"歌手简介","key":"V1001_TODAY_SINGER"},
               {"name":"菜单","sub_button":
                 [{"type":"view","name":"搜索","url":"http://www.soso.com/"},
                  {"type":"view","name":"视频","url":"http://v.qq.com/"},
                  {"type":"click","name":"赞一下我们","key":"V1001_GOOD"}
                 ]}
              ]}'
    response = $client.create_menu(menu)    # or Json String
    expect(response['errcode']).to eq(0)
    puts response
  end

  it 'can get weixin menu info' do
    menu_info = $client.get_menu
    expect(menu_info.keys[0]).to eq('menu')
    puts menu_info
  end

end
