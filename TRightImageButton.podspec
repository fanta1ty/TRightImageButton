#
# Be sure to run `pod lib lint TRightImageButton.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'TRightImageButton'
  s.version          = '1.0.0'
  s.summary          = 'TRightImageButton is a simple and flexible UI component fully written in Swift.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = 'TRightImageButton is a simple and flexible UI component fully written in Swift. TRightImageButton is developed to help programmers create a button with right image quickly without having to write many lines of codes.'

  s.homepage         = 'https://github.com/fanta1ty/TRightImageButton'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'fanta1ty' => 'thinhnguyen12389@gmail.com' }
  s.source           = { :git => 'https://github.com/fanta1ty/TRightImageButton.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.3'
  s.swift_version = '5.0'
  s.source_files = 'TRightImageButton/Classes/**/*'
  
  # s.resource_bundles = {
  #   'TRightImageButton' => ['TRightImageButton/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  s.dependency 'TTouchAnimatedButton', '~> 1.0.0'
end
