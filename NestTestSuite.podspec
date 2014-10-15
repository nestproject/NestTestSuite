Pod::Spec.new do |spec|
  spec.name = 'NestTestSuite'
  spec.version = '0.1.0'
  spec.summary = 'Test Suite for the Nest Swift Web Server Gateway Interface.'
  spec.homepage = 'https://github.com/nestproject/'
  spec.license = { :type => 'BSD', :file => 'LICENSE' }
  spec.author = { 'Kyle Fuller' => 'kyle@fuller.li' }
  spec.social_media_url = 'http://twitter.com/kylefuller'
  spec.source = { :git => 'https://github.com/nestproject/NestTestSuite.git', :tag => "#{spec.version}" }
  spec.source_files = 'NestTestSuite.swift'
  spec.requires_arc = true
  spec.ios.deployment_target = '8.0'
  spec.osx.deployment_target = '10.9'
  spec.dependency 'Nest', '~> 0.1.0'
  spec.dependency 'Inquiline', '~> 0.1.0'
end

