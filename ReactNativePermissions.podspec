require 'json'

package = JSON.parse(File.read(File.join(__dir__, 'package.json')))

Pod::Spec.new do |s|
  s.name                = 'ReactNativePermissions'
  s.version             = package['version']
  s.summary             = package['description']
  s.description         = package['description']
  s.homepage            = package['homepage']
  s.license             = package['license']
  s.author              = package['author']
  s.source              = { :git => 'https://github.com/yonahforst/react-native-permissions.git', :tag => s.version }

  s.platform            = :ios, '8.0'

  s.dependency 'React'

  s.preserve_paths      = 'docs', 'CHANGELOG.md', 'LICENSE', 'package.json', 'ReactNativePermissions.ios.js'
  s.source_files        = '*.{h,m}'
end