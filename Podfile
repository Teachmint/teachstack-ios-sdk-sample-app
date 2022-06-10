platform :ios, '14.0'
source 'https://github.com/CocoaPods/Specs.git'
target 'ios-sdk-demo-app' do
 pod 'TeachmintSdk'
end

target 'screen-share-demo' do
  post_install do |installer|
    installer.pods_project.targets.each do |target|
      target.build_configurations.each do |config|
        config.build_settings['APPLICATION_EXTENSION_API_ONLY'] = 'No'
      end
    end
  end
  pod 'TeachmintSdk' 
end
