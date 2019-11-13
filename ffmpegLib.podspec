#
# Be sure to run `pod lib lint ffmpegLib.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'ffmpegLib'
  s.version          = '0.1.4'
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
  s.source           = { :git => 'https://github.com/feixian/ffmpegPackage.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'ffmpegLib/Classes/FFmpeg-iOS/**/*.{h}'
  s.libraries = 'bz2', 'c++', 'z', 'iconv'
  #s.vendored_libraries =  'hlTUTKConnectSDK/Classes/HLCommunicationSDK/Library/ffmpeg/lib/*.{a}','hlTUTKConnectSDK/Classes/HLCommunicationSDK/Library/ffmpeg/x264/lib/*.{a}','hlTUTKConnectSDK/Classes/HLCommunicationSDK/Library/mp4v2/libmp4v2/lib/*.{a}','hlTUTKConnectSDK/Classes/HLCommunicationSDK/Library/TUTK/*.{a}','hlTUTKConnectSDK/Classes/HLCommunicationSDK/Library/AudioCodec/faac/*.{a}'
  
  # s.resource_bundles = {
  #   'ffmpegLib' => ['ffmpegLib/Assets/*.png']
  # }
  
  s.subspec 'libavcodec' do |ss|
      ss.source_files = 'ffmpegLib/Classes/FFmpeg-iOS/include/libavcodec/*.{h}'
  end
  
  s.subspec 'libavdevice' do |ss|
      ss.source_files = 'ffmpegLib/Classes/FFmpeg-iOS/include/libavdevice/*.{h}'
  end
  
  s.subspec 'libavfilter' do |ss|
      ss.source_files = 'ffmpegLib/Classes/FFmpeg-iOS/include/libavfilter/*.{h}'
  end
  
  s.subspec 'libavformat' do |ss|
      ss.source_files = 'ffmpegLib/Classes/FFmpeg-iOS/include/libavformat/*.{h}'
  end
  
  s.subspec 'libavutil' do |ss|
      ss.source_files = 'ffmpegLib/Classes/FFmpeg-iOS/include/libavutil/*.{h}'
  end
  
  s.subspec 'libswresample' do |ss|
      ss.source_files = 'ffmpegLib/Classes/FFmpeg-iOS/include/libswresample/*.{h}'
  end
  
  s.subspec 'libswscale' do |ss|
      ss.source_files = 'ffmpegLib/Classes/FFmpeg-iOS/include/libswscale/*.{h}'
  end
  
  s.vendored_libraries =  'ffmpegLib/Classes/FFmpeg-iOS/lib/*.{a}'
  s.public_header_files = 'ffmpegLib/Classes/FFmpeg-iOS/include/**/*.{h}'
  s.pod_target_xcconfig = {
      'LIBRARY_SEARCH_PATHS'   => '$(inherited)   $(PODS_CONFIGURATION_BUILD_DIR)/ffmpegLib/Classes/FFmpeg-iOS/lib',
      'HEADER_SEARCH_PATHS'   => '$(inherited)   $(PODS_CONFIGURATION_BUILD_DIR)/ffmpegLib/Classes/FFmpeg-iOS/include $(PODS_CONFIGURATION_BUILD_DIR)/ffmpegLib/Classes/FFmpeg-iOS',
      'OTHER_LDFLAGS'            => '$(inherited) -undefined dynamic_lookup -ObjC',
      'ENABLE_BITCODE'           => 'NO'
  }

  
  
  s.frameworks = 'UIKit','AudioToolBox','CoreImage','CoreMedia','VideoToolBox','AVFoundation'
  # s.dependency 'AFNetworking', '~> 2.3'
  
end
