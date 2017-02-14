Pod::Spec.new do |s|
  s.name         = 'ZFKit'
  s.summary      = 'High performance model framework for iOS/OSX.'
  s.version      = '1.3.2'
  s.license      = { :type => 'MIT', :file => 'LICENSE' }
  s.authors      = { 'FanyiZeng' => 'FanyiZeng@Yeah.Net' }
  s.social_media_url = 'http://www.jianshu.com/u/e89709cae2ad'
  s.homepage     = 'https://github.com/FanyiZeng/ZFKit'

  s.ios.deployment_target = '6.0'


  s.source       = { :git => 'https://github.com/FanyiZeng/ZFKit.git', :tag => s.version.to_s }
  
  s.requires_arc = true
  s.source_files = 'ZFKit/*.{h,m}'
  s.public_header_files = 'ZFKit/*.{h}'

  s.dependency 'YYModel'
  s.frameworks = 'Foundation', 'CoreFoundation'

end
