require "json"
 
 package = JSON.parse(File.read(File.join(__dir__, "package.json")))

 Pod::Spec.new do |s|
	s.name         = "RNConnecthings"
	s.version      = package['version']
	s.summary      = package['description']
	s.author       = package['author']
	s.homepage     = package['homepage']
	s.license      = package['license']
	s.homepage         = 'https://herow.io'
	s.license          = { :file => '../LICENSE' }
	s.author           = { 'HEROW' => 'contact@herow.io' }
	s.source       = {
		:http => "https://github.com/herowio/herow-sdk-ios/releases/download/v7.0.0/herow_sdk_ios.framework.zip",
		:type => "zip"
	}
    s.source_files  = "ios/**/*.{h,m}"
	s.ios.deployment_target = '11.0'
	s.pod_target_xcconfig = { 'SWIFT_VERSION' => '5.0' }
	s.frameworks = 'UIKit', 'Foundation', 'SystemConfiguration', 'UserNotifications'
	s.dependency 'React'
	s.dependency 'Herow', '7.0.0'
	s.requires_arc = true
	s.license      = {
		:type => 'Copyright',
        :text => <<-LICENSE
	Copyright 2021 Connecthings, Inc. All rights reserved.
	LICENSE
	}
end
