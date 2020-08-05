Pod::Spec.new do |s|
  s.name             = 'MJSecurity'
  s.version          = '0.1.3'
  s.summary          = 'MJSecurity 包含Base64、Hash、MD5、SHA、AES、DES、RSA'
  s.homepage         = 'https://github.com/iosLiuPeng/MJSecurity'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'iosLiuPeng' => '392009255@qq.com' }
  s.source           = { :git => 'git@git.musjoy.com:MJSecurity.git', :tag => "v-#{s.version}" }
  s.platform     = :ios 
  s.ios.deployment_target = '7.0'
  s.source_files = 'Classes/*.{h,m}'

  s.user_target_xcconfig = {
        'GCC_PREPROCESSOR_DEFINITIONS' => 'MODULE_SECURITY'
    }
  # s.resource_bundles = {
  #   'view' => ['Assets/*.png']
  # }
end
