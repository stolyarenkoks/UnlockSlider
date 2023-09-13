Pod::Spec.new do |s|
  s.name = 'UnlockSlider'
  s.version = '0.0.1'
  s.license = { :type => 'MIT', :file => 'LICENSE' }
  s.summary = 'Fully customized Slide to Unlock Control, written on Swift under the short name - UnlockSlider'
  s.homepage = 'https://github.com/stolyarenkoks/UnlockSlider'
  s.authors = { 'Konstantin Stolyarenko' => 'stolyarenko.kons@gmail.com' }
  s.source = { :git => 'https://github.com/stolyarenkoks/UnlockSlider.git', :tag => s.version }
  s.documentation_url = 'https://github.com/stolyarenkoks/UnlockSlider/blob/master/README.md'
  s.ios.deployment_target = '10.0'
  s.swift_versions = ['5.0', '5.1']
  s.source_files = 'Source/*.swift'
end
