#
# Be sure to run `pod lib lint UIDefaultFont.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'UIDefaultFont'
  s.version          = '0.3'
  s.summary          = 'Replace the system font in the whole app easily'

  s.description      = <<-DESC
Replace the system font in the whole app easily.
This micro libray is simply just a swizzle of the default UIFont method, regarding system font.
We UIDefaultFont you can replace the default system font with a couple of lines.
                       DESC

  s.homepage         = 'https://github.com/gaelfoppolo/UIDefaultFont'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Gaël Foppolo' => 'me@gaelfoppolo.com' }
  s.social_media_url   = "http://twitter.com/gaelugio"
  s.source           = { :git => 'https://github.com/gaelfoppolo/UIDefaultFont.git', :tag => s.version.to_s }

  s.ios.deployment_target = '10.0'

  s.pod_target_xcconfig = { 'SWIFT_VERSION' => '4.0' }

  s.requires_arc = true

  s.source_files = 'UIDefaultFont/Classes/**/*'

end
