#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint simple_rsa2.podspec' to validate before publishing.
#
Pod::Spec.new do |s|
  s.name             = 'simple_rsa'
  s.version          = '1.0.0'
  s.summary          = 'A simple RSA plugin for Flutter'
  s.description      = <<-DESC
A simple RSA plugin for Flutter.
                       DESC
  s.homepage         = 'https://github.com/olgeer/simple_rsa'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'olgeer' => 'olgeer@163.com' }
  s.source           = { :path => '.' }
  s.source_files = 'Classes/**/*'
  s.dependency 'Flutter'
  s.dependency 'SwiftyRSA', "~> 1.6.0"
  s.platform = :ios, '11.0'

  # Flutter.framework does not contain a i386 slice. Only x86_64 simulators are supported.
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES', 'VALID_ARCHS[sdk=iphonesimulator*]' => 'x86_64' }
  s.swift_version = '5.0'
end
