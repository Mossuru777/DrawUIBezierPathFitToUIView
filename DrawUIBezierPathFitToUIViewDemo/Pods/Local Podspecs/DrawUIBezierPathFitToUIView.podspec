Pod::Spec.new do |s|
  s.name               = "DrawUIBezierPathFitToUIView"
  s.version            = "0.0.1"
  s.summary            = "Draw UIBezierPath fit to UIView."
  s.homepage           = "https://github.com/Mossuru777/DrawUIBezierPathFitToUIView"
  s.license            = { :type => "MIT", :file => "LICENSE" }
  s.author             = "Mossuru777"
  s.social_media_url   = "http://twitter.com/Mossuru777"
  s.platform           = :ios, "7.0"
  s.source             = { :git => "https://github.com/Mossuru777/DrawUIBezierPathFitToUIView.git", :tag => "0.0.1" }
  s.source_files  = "Classes/**/*.{h,m}"
  s.requires_arc = true
end
