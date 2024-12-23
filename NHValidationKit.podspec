#
#  Be sure to run `pod spec lint NHValidationKit.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://guides.cocoapods.org/syntax/podspec.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |spec|

  spec.name         = "NHValidationKit"
  spec.version      = "1.0.2"
  spec.summary      = "NHValidationKit is a validation framework for iOS platform."
  spec.description  = "NHValidationKit is a validation framework for iOS platform. In future I have plan to increase the scope."
  spec.homepage     = "https://github.com/nirobhasanbd/NHValidationKit"
  spec.license      = "MIT"
  spec.author             = { "Nirob Hasan" => "hasan53nirob@gmail.com" }
  spec.platform     = :ios, "15.6"
  spec.source       = { :git => "https://github.com/nirobhasanbd/NHValidationKit.git", :tag => "#{spec.version}" }
  # spec.source_files  = "NHValidationKit/**/*.{swift}"
  spec.vendored_frameworks = "XCFramework/NHValidationKit.xcframework"
  spec.swift_version = "5.0"

end
