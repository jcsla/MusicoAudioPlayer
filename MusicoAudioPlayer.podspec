#
# Be sure to run `pod lib lint MusicoAudioPlayer.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'MusicoAudioPlayer'
  s.version          = '0.2.1'
  s.summary          = 'MusicoAudioPlayer is a wrapper of AVPlayer.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = 'MusicoAudioPlayer is a wrapper of AVPlayer. This project was inspired from AudioPlayer, delannoyk.'

  s.homepage         = 'https://github.com/jcsla/MusicoAudioPlayer'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Phillip' => 'phillip.leejy@gmail.com' }
  s.source           = { :git => 'https://github.com/jcsla/MusicoAudioPlayer.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'MusicoAudioPlayer/Classes/**/*'
  
  # s.resource_bundles = {
  #   'MusicoAudioPlayer' => ['MusicoAudioPlayer/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  s.dependency 'SDWebImage', '~> 3.8'
end
