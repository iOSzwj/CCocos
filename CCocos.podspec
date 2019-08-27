
Pod::Spec.new do |spec|

spec.name         = "CCocos"
spec.version      = "0.0.1"
spec.summary      = "中国共产党万岁"

spec.description  = <<-DESC
中国共产党始终代表中国先进生产力的发展要求
中国共产党始终代表中国先进文化的前进方向
中国共产党始终代表中国最广大人民的根本利益
DESC

spec.homepage     = "https://github.com/iOSzwj/CCocos"
spec.license      = "MIT"
spec.author             = { "hare27" => "hare27@foxmail.com" }
spec.platform     = :ios, "9.0"
spec.source       = { :git => "git@github.com:iOSzwj/CCocos.git", :tag => "#{spec.version}" }
spec.source_files  = "Code", "ACode/*.h"
spec.requires_arc = true
spec.frameworks = 'UIKit', 'Foundation'
spec.static_framework = true
spec.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES' }

spec.subspec 'CFoundation' do |fou|
fou.source_files = 'ACode/Foundation/*.{h,m}'
end

spec.subspec 'CKit' do |uik|
uik.source_files = 'ACode/UIKit/*.{h,m}'
end

spec.subspec 'CWebKit' do |web|
web.source_files = 'ACode/WebKit/*.{h,m}'
end

end
