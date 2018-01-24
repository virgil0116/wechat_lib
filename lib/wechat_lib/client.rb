module WechatLib

  class Client
    attr_accessor :app_id, :app_secret, :expired_at # Time.now + expires_in
    attr_accessor :access_token

    include Api::User
    include Api::Menu

    def initialize(app_id='', app_secret='', expired_at=nil)
      @app_id = app_id
      @app_secret = app_secret
      @expired_at = (expired_at.to_i || Time.now.to_i)
      yield self if block_given?
    end

    # return token
    def get_access_token
      # 如果当前token过期时间小于当前时间，则重新获取一次
      if self.expired_at < Time.now.to_i
        authenticate
      end
      @access_token
    end

    # authenticate access_token  https://mp.weixin.qq.com/wiki?t=resource/res_main&id=mp1421140183
    def authenticate
      hash_infos        = JSON.parse(RestClient.get(authenticate_url))
      self.access_token = hash_infos['access_token']
      self.expired_at   = Time.now.to_i + hash_infos['expires_in']
    end

    private

    def access_token_param
      "access_token=#{get_access_token}"
    end

    def authenticate_url
      "#{endpoint}/token?grant_type=client_credential&appid=#{@app_id}&secret=#{@app_secret}"
    end

    def endpoint
      'https://api.weixin.qq.com/cgi-bin'
    end

  end
end