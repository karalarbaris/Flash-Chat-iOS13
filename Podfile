# Uncomment the next line to define a global platform for your project
platform :ios, '10.0'

target 'Flash Chat iOS13' do
  # Comment the next line if you don't want to use dynamic frameworks
  use_frameworks!

  # Pods for Flash Chat iOS13
  
  pod 'CLTypingLabel', '~> 0.4.0'
  pod 'Firebase/Auth'
  pod 'Firebase/Firestore'
  pod 'IQKeyboardManagerSwift'

  
  
end

post_install do |installer|
 installer.pods_project.targets.each do |target|
  target.build_configurations.each do |config|
   config.build_settings['IPHONEOS_DEPLOYMENT_TARGET'] = '9.0'
  end
 end
end



