Pod::Spec.new do |s|
  s.name             = 'LegoCV'
  s.version          = '0.1.3'
  s.summary          = 'Simple, lightweight native OpenCV wrapper for Objective-C and Swift.'

  s.description      = <<-DESC
LegoCV is native OpenCV framework built for Swift and Objective-C projects. It eliminates the need to use Objective-C++ and allows for full compatibility with native Swift projects. The only dependency is native OpenCV framework for iOS.
                       DESC

  s.homepage         = 'https://github.com/legoless/legocv'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => '3-clause BSD', :file => 'LICENSE' }
  s.author           = { 'Dal Rupnik' => 'legoless@gmail.com' }
  s.source           = { :git => 'https://github.com/legoless/legocv.git', :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/thelegoless'
  
  s.ios.deployment_target = '13.0'

  s.static_framework = true
  s.public_header_files = 'Sources/LegoCV.h'
  s.source_files = 'Sources/LegoCV.h'

  s.private_header_files = 'Sources/Wrapper/**/Private/*.h'
  s.public_header_files = 'Sources/Wrapper/**/*.h'
  s.source_files = 'Sources/Wrapper/**/*.{h,m,mm}'
  s.dependency 'OpenCV'

  # s.subspec 'Core' do |subspec|
  #   subspec.public_header_files = 'Sources/Wrapper/Core/**/*.h', 'Sources/Wrapper/Utilities/**/*.h'
  #   subspec.private_header_files = 'Sources/Wrapper/Core/Private/*.h'
  #   subspec.source_files = 'Sources/Wrapper/Core/**/*.{h,m,mm}', 'Sources/Wrapper/Utilities/**/*.{h,m,mm}'
  #   subspec.dependency 'OpenCV'
  # end

  # s.subspec 'ImageProcessing' do |subspec|
  #   subspec.public_header_files = 'Sources/Wrapper/ImageProcessing/**/*.h' 
  #   #subspec.private_header_files = 'LegoCV/LegoCV/Wrapper/Core/Private/*.h'
  #   subspec.source_files = 'Sources/Wrapper/ImageProcessing/**/*.{h,m,mm}'
  #   subspec.dependency 'LegoCV/Core'
  # end
  
  s.frameworks = 'UIKit'
end
