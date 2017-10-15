Pod::Spec.new do |s|
  s.name         = "UIDefaultFont"
  s.version      = "1.0.0"
  s.summary      = "Replace the system font in the whole app easily"
  s.description  = <<-DESC
Replace the system font in the whole app easily.
This micro libray is simply just a swizzle of the default UIFont method, regarding system font.
We UIDefaultFont you can replace the default system font with a couple of lines.
  DESC
  s.homepage     = "https://github.com/gaelfoppolo/UIDefaultFont"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author             = { "Gaël Foppolo" => "me@gaelfoppolo.com" }
  s.social_media_url   = "http://twitter.com/gaelugio"
  s.ios.deployment_target = "10.0"
  s.source       = { :git => "https://github.com/gaelfoppolo/UIDefaultFont.git", :tag => s.version.to_s }
  s.source_files  = "Sources/**/*"
  s.documentation_url = "https://gaelfoppolo.github.io/UIDefaultFont"
end
