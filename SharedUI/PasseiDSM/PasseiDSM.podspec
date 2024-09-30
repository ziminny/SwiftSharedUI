Pod::Spec.new do |s|
  s.name                  = 'PasseiDSM'
  s.version               = '0.0.2'
  s.summary               = 'Shared UI'
  s.swift_version         = '5.0'
  s.description           = <<-DESC "Control responsive sizes app"
  Global sizes application and shared ui
  DESC
  s.homepage              = 'https://github.com/ziminny/PasseiDSM'
  s.license               = { :type => 'PASSEI-GROUP', :file => 'LICENSE' }
  s.authors               = { 'Vagner Oliveira' => 'ziminny@gmail.com' }
  s.source                = { :git => 'https://github.com/ziminny/PasseiDSM.git', :tag => s.version.to_s }
  s.ios.deployment_target = '16.0'
  s.osx.deployment_target = '13.0'
  #s.resources = ['PasseiDSM/Resources/**']
  s.resource_bundles = {
    'PasseiDSM-Custom-Pod-Resources' => ['PasseiDSM/Resources/**']
  }
  s.source_files          = 'PasseiDSM/Classes/**/*' 
  end
