Pod::Spec.new do |s|
  s.name         = "OSETQMSDK"
  s.version      = "6.4.8.5"
  s.summary      = "奇点广告对接"
  s.description  = <<-DESC
                        OSETQMSDK 是一个专业的广告SDK，提供高效的广告展示和收益优化功能。
                    DESC
  s.homepage     = "https://github.com/OSETSDK/OSETQMSDK"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author       = { 'shenshi' => 'yaohaofei@shenshiads.com' }
  
  # 设置最低支持版本
  s.ios.deployment_target = '12.0'
  
  # 源文件配置
  s.source       = {
    :git => 'https://github.com/OSETSDK/OSETQMSDK.git',
    :tag => s.version.to_s
  }
  
  # 主框架文件
  # 检查 OSETSDK.podspec 关键字段
  s.vendored_frameworks = 'OSETSDK.xcframework'
  
  # 系统框架依赖
  s.frameworks = "Foundation", "UIKit", "AdSupport", "CoreTelephony", "StoreKit", "SystemConfiguration"
  # 排除模拟器的 arm64 架构
  s.pod_target_xcconfig = {
    'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64'
  }
  s.user_target_xcconfig = {
    'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64'
  }
  # 资源文件
  s.resources = "OSETSDK.bundle"
    
  # Swift版本设置
  s.swift_version = '5.0'

s.dependency 'QuMengAdSDK', '>= 1.3.1'
end
