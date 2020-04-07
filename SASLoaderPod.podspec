

Pod::Spec.new do |s|
  s.name             = 'SASLoaderPod'
  s.version          = '1.0.6'
  s.summary          = 'Pod version of SASLoader'

  s.description      = <<-DESC
'Pod version of SASLoader'
                       DESC

  s.homepage         = 'https://github.com/AnupSukumaran/SASLoaderPod'
 
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'AnupSukumaran' => 'anup.sukumaran9@gmail.com' }
  s.source           = { :git => 'https://github.com/AnupSukumaran/SASLoaderPod.git', :tag => s.version.to_s }
  
  s.ios.deployment_target = '10.0'

  s.source_files = 'Source/**/*.swift'
  
  s.swift_version = '5.0'
  
  s.platforms = {
    "ios":"10.0"
  }

  s.resources = [ "Source/Main.storyboard"]

end
