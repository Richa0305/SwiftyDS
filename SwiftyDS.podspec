Pod::Spec.new do |spec|

  spec.name         = "SwiftyDS"
  spec.version      = "1.0.1"
  spec.summary      = "A CocoaPods library written in Swift"

  spec.description  = <<-DESC
This CocoaPods library helps you use data structure in swift which are not available in swift library. Like Stack, Tree, Queue, LinkedList. 
                   DESC

  spec.homepage     = "https://github.com/Richa0305/SwiftyDS"
  spec.license      = { :type => "MIT", :file => "LICENSE" }
  spec.author       = { "Richa0305" => "richa0305@gmail.com" }

  spec.ios.deployment_target = "14.1"
  spec.swift_version = "5.0"

  spec.source        = { :git => "https://github.com/Richa0305/SwiftyDS.git", :tag => "#{spec.version}" }
  spec.source_files  = "SwiftyDS/**/*.{h,m,swift}"

end