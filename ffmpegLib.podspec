#
# Be sure to run `pod lib lint ffmpegLib.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'ffmpegLib'
  s.version          = '0.1.0'
  s.summary          = 'A short description of ffmpegLib.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/feixian/ffmpegPackage'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'hualaiTech' => 'zhangyifei@hualaikeji.com' }
  s.source           = { :git => 'git@github.com:feixian/ffmpegPackage.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'ffmpegLib/Classes/FFmpeg-iOS/**/*.{h}'
  s.libraries = 'bz2', 'c++', 'z', 'iconv'
  #s.vendored_libraries =  'hlTUTKConnectSDK/Classes/HLCommunicationSDK/Library/ffmpeg/lib/*.{a}','hlTUTKConnectSDK/Classes/HLCommunicationSDK/Library/ffmpeg/x264/lib/*.{a}','hlTUTKConnectSDK/Classes/HLCommunicationSDK/Library/mp4v2/libmp4v2/lib/*.{a}','hlTUTKConnectSDK/Classes/HLCommunicationSDK/Library/TUTK/*.{a}','hlTUTKConnectSDK/Classes/HLCommunicationSDK/Library/AudioCodec/faac/*.{a}'
  
  # s.resource_bundles = {
  #   'ffmpegLib' => ['ffmpegLib/Assets/*.png']
  # }
  s.vendored_libraries =  'ffmpegLib/Classes/FFmpeg-iOS/lib/*.{a}'
  s.public_header_files = 'ffmpegLib/Classes/FFmpeg-iOS/include/*.{h}'
  s.frameworks = 'UIKit','AudioToolBox','CoreImage','CoreMedia','VideoToolBox','AVFoundation'
  # s.dependency 'AFNetworking', '~> 2.3'
end
