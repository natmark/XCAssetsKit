Pod::Spec.new do |s|
  s.name         = "XCAssetsKit"
  s.version      = "0.0.1"
  s.summary      = ".xcassets parser written in Swift"
  s.homepage     = "https://github.com/natmark/XCAssetsKit"
  s.license        = { :type => 'MIT', :file => 'LICENSE' }
  s.author         = { 'Atsuya Sato' => 'natmark0918@gmail.com' }
  s.source         = { :git => "https://github.com/natmark/XCAssetsKit.git", :tag => s.version }
  s.osx.deployment_target = "10.11"
  s.ios.deployment_target = "10.0"
  s.source_files   = 'Sources/**/*.swift'
end
