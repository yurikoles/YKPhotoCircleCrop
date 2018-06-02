#
# Be sure to run `pod lib lint YKPhotoCircleCrop.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'YKPhotoCircleCrop'
  s.version          = '1.3.1'
  s.summary          = 'A simple circular image cropper written in Swift'
  s.description      = <<-DESC
This is a simple circular image cropper written in Swift which can be used after the user image selection. The user can select the circle they want to user as profile picture.
                       DESC
  s.homepage         = 'https://github.com/yurikoles/YKPhotoCircleCrop'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Yurii Kolesnykov' => 'yurikoles@gmail.com' }
  s.source           = { :git => 'https://github.com/yurikoles/YKPhotoCircleCrop.git', :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/yurikoles'
  s.ios.deployment_target = '8.0'
  s.source_files = 'YKPhotoCircleCrop/Classes/**/*'
end
