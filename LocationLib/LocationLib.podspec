#
# Be sure to run `pod lib lint WTMRooter.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'LocationLib'
  s.version          = '0.1.0'
  s.summary          = 'A short description of LocationLib.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
     local pods for baidu map
                       DESC

  s.homepage         = 'https://github.com/xxxxx/LocationLib'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'zhwj' => 'sduzhwj@163.com' }
  s.source           = { :git => 'https://github.com/xxxxx.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'LocationLib/Classes/**/*.{h,m,mm}'

  s.resources = "LocationLib/Frameworks/BaiduMapAPI_Map.framework/Resources/mapapi.bundle"

  s.public_header_files = 'LocationLib/Classes/**/*.h','LocationLib/Frameworks/**/*.h'

  s.frameworks = 'UIKit', 'MapKit','CoreTelephony','CoreLocation','QuartzCore','OpenGLES','SystemConfiguration','CoreGraphics','Security'

  s.libraries = 'sqlite3.0','stdc++.6.0.9'
  
  s.vendored_frameworks = 'LocationLib/Frameworks/BaiduMapAPI_Base.framework','LocationLib/Frameworks/BaiduMapAPI_Map.framework'
  
  s.vendored_libraries = 'LocationLib/Libs/*'
  s.pod_target_xcconfig = {
    'OTHER_LDFLAGS' => '$(inherited) -ObjC'
  }

  s.preserve_paths = 'LocationLib/BaiduMapAPI_Base.framework/BaiduMapAPI_Base','LocationLib/BaiduMapAPI_Map.framework/BaiduMapAPI_Map',

  s.prepare_command = 'touch Empty.m && cp LocationLib/Frameworks/BaiduMapAPI_Base.framework/BaiduMapAPI_Base libBaiduMapAPI_Base.a && cp LocationLib/Frameworks/BaiduMapAPI_Map.framework/BaiduMapAPI_Map libBaiduMapAPI_Map.a && cp -r LocationLib/Frameworks/BaiduMapAPI_Map.framework/Resources/mapapi.bundle .'
end
