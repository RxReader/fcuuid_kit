#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint fcuuid_kit.podspec` to validate before publishing.
#
Pod::Spec.new do |s|
  s.name             = 'fcuuid_kit'
  s.version          = '1.0.0'
  s.summary          = 'Flutter plugin for fcuuid.'
  s.description      = <<-DESC
Flutter plugin for fcuuid.
                       DESC
  s.homepage         = 'http://example.com'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'Your Company' => 'email@example.com' }
  s.source           = { :path => '.' }
  s.source_files = 'Classes/**/*'
  s.public_header_files = 'Classes/**/*.h'
  s.dependency 'Flutter'
  s.platform = :ios, '9.0'

  s.subspec 'vendor' do |sp|
    sp.dependency 'FCUUID', '~> 1.3.1'
  end

  # Flutter.framework does not contain a i386 slice.
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES', 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386' }
end
