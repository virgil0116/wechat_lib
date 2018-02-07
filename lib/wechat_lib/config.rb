# encoding: utf-8

module WechatLib

  class << self

    attr_accessor :config

    def configure
      yield self.config ||= Config.new
    end
  end

  class Config
    attr_accessor :redis
  end
end