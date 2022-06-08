
#
# Be sure to run `pod lib lint QMUIComponent.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'QMUIComponent'
  s.version          = '0.3'
  s.summary          = 'A short description of QMUIComponent.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/7moor-tech/QMUIComponents'
 
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { '焦林生' => '18515384635@163.com' }
  s.source           = { :git => 'https://github.com/7moor-tech/QMUIComponents.git', :tag => s.version.to_s }

  s.ios.deployment_target = '9.0'
  s.requires_arc = true
   s.frameworks = 'UIKit'
   s.dependency 'QMChatUICore'
   
   s.subspec 'QMFileManager' do |manager|
      manager.source_files = "QMUIComponent/Classes/QMFileManager/**/*.{h,m}"
   end
  
   s.subspec 'QMAudio' do |audio|
      audio.source_files = "QMUIComponent/Classes/QMAudio/**/*.{h,m}"
   end
  
  s.resource = [
    '**/QMUIComponent/Assets/*.bundle'
  ]
      
   s.pod_target_xcconfig = {'VALID_ARCHS'=>'armv7 x86_64 arm64'}
   
   #pod trunk push QMUIComponent.podspec --allow-warnings
end
