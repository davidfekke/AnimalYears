#
# Be sure to run `pod lib lint AnimalYears.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'AnimalYears'
  s.version          = '0.1.1'
  s.summary          = 'A short description of AnimalYears.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
This is a library for creating functions for converting pet years into animal years.
                       DESC

  s.homepage         = 'https://github.com/davidfekke/AnimalYears'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'davidfekke' => 'david@fekke.com' }
  s.source           = { :git => 'https://github.com/davidfekke/AnimalYears.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '14.0'
  s.swift_version = '5.0'

  s.source_files = 'Sources/AnimalYears/**/*'
  
  # s.resource_bundles = {
  #   'AnimalYears' => ['AnimalYears/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
