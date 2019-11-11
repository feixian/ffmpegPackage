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
  s.summary          = 'A simplify iOS library of ffmpeg.'

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

  #s.source_files = 'ffmpegLib/Classes/FFmpeg-iOS/include/**/*.{h}'
  s.libraries = 'bz2', 'c++', 'z', 'iconv'
  #s.vendored_libraries =  'hlTUTKConnectSDK/Classes/HLCommunicationSDK/Library/ffmpeg/lib/*.{a}','hlTUTKConnectSDK/Classes/HLCommunicationSDK/Library/ffmpeg/x264/lib/*.{a}','hlTUTKConnectSDK/Classes/HLCommunicationSDK/Library/mp4v2/libmp4v2/lib/*.{a}','hlTUTKConnectSDK/Classes/HLCommunicationSDK/Library/TUTK/*.{a}','hlTUTKConnectSDK/Classes/HLCommunicationSDK/Library/AudioCodec/faac/*.{a}'
  
  # s.resource_bundles = {
  #   'ffmpegLib' => ['ffmpegLib/Assets/*.png']
  # }
  
#  temp_path = 'ffmpegLib/Classes/'
#  root_spec_path = 'ffmpegLib/Classes'
#  current_dir = File.realpath(File.dirname(__FILE__))
#  if File.file?(File.join(current_dir, "_DEV_ENV"))
#    s.source_files = 'ffmpegLib/Classes/**/*'
#    else
#    make_spec_path = File.join(current_dir, "_make_spec.rb")
#    File.open(make_spec_path) do |fp|
#      eval(fp.read)
#    end
#    root_path = File.join(current_dir, root_spec_path)
#    traverse(s, root_path, root_spec_path)
#  end
    s.subspec 'libavcodec' do |ss|
        ss.source_files = 'ffmpegLib/Classes/include/libavcodec/*.{h}'
    end

    s.subspec 'libavdevice' do |ss|
        ss.source_files = 'ffmpegLib/Classes/include/libavdevice/*.{h}'
    end

    s.subspec 'libavfilter' do |ss|
        ss.source_files = 'ffmpegLib/Classes/include/libavfilter/*.{h}'
    end
    
    s.subspec 'libavformat' do |ss|
        ss.source_files = 'ffmpegLib/Classes/include/libavformat/*.{h}'
    end
    
    s.subspec 'libavutil' do |ss|
        ss.source_files = 'ffmpegLib/Classes/include/libavutil/*.{h}'
    end
    
    s.subspec 'libswresample' do |ss|
        ss.source_files = 'ffmpegLib/Classes/include/libswresample/*.{h}'
    end
    
    s.subspec 'libswscale' do |ss|
        ss.source_files = 'ffmpegLib/Classes/include/libswscale/*.{h}'
    end



  s.vendored_libraries =  'ffmpegLib/Classes/lib/*.{a}'
  s.public_header_files = 'ffmpegLib/Classes/include/*.{h}'
  s.frameworks = 'UIKit','AudioToolBox','CoreImage','CoreMedia','VideoToolBox','AVFoundation'
  # s.dependency 'AFNetworking', '~> 2.3'
  
end
