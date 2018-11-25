Pod::Spec.new do |s|
  s.name             = 'HeroSwift_SimpleButton'
  s.version          = '0.0.7'
  s.swift_version    = '4.1'
  s.summary          = 'SimpleButton'
  s.description      = <<-DESC
Simple Button
                       DESC

  s.homepage         = 'https://github.com/HeroSwift/SimpleButton'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'musicode' => 'musicode@qq.com' }
  s.source           = { :git => 'https://github.com/HeroSwift/SimpleButton.git', :tag => s.version.to_s }
  s.ios.deployment_target = '8.0'
  s.source_files = 'SimpleButton/*'
end