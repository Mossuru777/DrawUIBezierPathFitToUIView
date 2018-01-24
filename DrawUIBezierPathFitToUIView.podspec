Pod::Spec.new do |s|
  s.name               = "DrawUIBezierPathFitToUIView"
  s.version            = "2.0.0"
  s.summary            = "Draw UIBezierPath fit to UIView."
  s.homepage           = "https://github.com/Mossuru777/DrawUIBezierPathFitToUIView"
  s.license            = { :type => "MIT", :file => "LICENSE" }
  s.author             = "Mossuru777"
  s.social_media_url   = "https://twitter.com/Mossuru777"
  s.platform           = :ios, "7.0"
  s.source             = { :git => "https://github.com/Mossuru777/DrawUIBezierPathFitToUIView.git", :tag => s.version.to_s }
  s.source_files  = "Classes/**/*.{swift}"
end
