Pod::Spec.new do |s|

  s.name             = 'SimpleChainableStackUI'
  s.version          = '1.0.0'
  s.summary          = 'Simple Chainable StackUI.'
  s.homepage         = 'https://github.com/Orisun/SimpleChainableStackUI'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Orisun' => 'wdyang13@163.com' }
  
  s.platform         = :ios
  s.ios.deployment_target = '10.0'
  s.source_files     = 'SimpleChainableStackUI/Classes/**/*'
  
  s.source           = { :git => 'https://github.com/Orisun/SimpleChainableStackUI.git', :tag => s.version.to_s }
end
