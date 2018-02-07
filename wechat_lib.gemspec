# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'wechat_lib/version'

Gem::Specification.new do |spec|
  spec.name          = 'wechat_lib'
  spec.version       = WechatLib::VERSION
  spec.authors       = ['WJ']
  spec.email         = ['wangjing@wikiflyer.cn']

  spec.summary       = '微信公众号简单描述.'
  spec.description   = '微信公众号对接的描述.'
  spec.homepage      = 'https://github.com/virgil0116/wechat_lib'
  spec.license       = 'MIT'

  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_dependency 'multi_json', '~> 1.13', '>= 1.13.1'
  spec.add_dependency 'redis', '~> 4.0', '>= 4.0.1'
  spec.add_dependency 'rest-client', '>= 2.0.2'

  spec.add_development_dependency 'bundler', '~> 1.15'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
end
