Pod::Spec.new do |s|
  s.name             = 'MJSecurity'
  s.version          = '0.1'
  s.summary          = 'MJSecurity MJSecurity MJSecurity.'
  s.homepage         = 'https://github.com/iosLiuPeng/MJSecurity'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'iosLiuPeng' => '392009255@qq.com' }
  s.source           = { :git => 'git@git.musjoy.com:MJSecurity.git', :tag => s.version.to_s }
  s.platform     = :ios 
  s.ios.deployment_target = '7.0'
  s.source_files = 'Classes/*.{h,m}'

  # s.resource_bundles = {
  #   'view' => ['Assets/*.png']
  # }
end
