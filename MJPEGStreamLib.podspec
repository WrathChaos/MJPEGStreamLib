#
# Be sure to run `pod lib lint MJPEGStreamLib.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'MJPEGStreamLib'
  s.version          = '0.2.1'
  s.summary          = 'Simple MJPEG Stream Library for Swift'
  swift_versions = '4.0', '4.2', '5.0'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
Simple and easy to use MJPEG Stream Library. It contains authentication if your stream url needs a username/password. It is based on UIImageView so it is all up to your custom design. Swift 5, 4.2, 4 and XCode 10.0+ Compatibility.
                       DESC

  s.homepage         = 'https://github.com/wrathchaos/MJPEGStreamLib'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'FreakyCoder' => 'kurayogun@gmail.com' }
  s.source           = { :git => 'https://github.com/wrathchaos/MJPEGStreamLib.git', :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/freakycodercom'

  s.ios.deployment_target = '9.0'

  s.source_files = 'MJPEGStreamLib/Classes/**/*'
  
  # s.resource_bundles = {
  #   'MJPEGStreamLib' => ['MJPEGStreamLib/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
