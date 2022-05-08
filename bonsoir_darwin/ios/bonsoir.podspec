#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint bonsoir.podspec' to validate before publishing.
#
Pod::Spec.new do |s|
  s.name             = 'bonsoir'
  s.version          = '2.0.0'
  s.summary          = 'Allows you to discover network services and to broadcast your own. Based on Bonjour and NSD.'
  s.description      = <<-DESC
A Zeroconf library that allows you to discover network services and to broadcast your own. Based on Apple Bonjour and Android NSD.
                       DESC
  s.homepage         = 'https://github.com/Skyost/Bonsoir'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'Skyost' => 'me@skyost.eu' }
  s.source           = { :path => '.' }
  s.source_files = 'Classes/**/*'
  s.public_header_files = 'Classes/**/*.h'
  s.dependency 'Flutter'
  s.platform = :ios, '10.0'

  # Flutter.framework does not contain a i386 slice. Only x86_64 simulators are supported.
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES', 'VALID_ARCHS[sdk=iphonesimulator*]' => 'x86_64' }
  s.swift_version = '5.0'
end
