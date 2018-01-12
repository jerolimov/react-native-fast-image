require 'json'
pjson = JSON.parse(File.read('package.json'))

Pod::Spec.new do |s|
  s.name            = "react-native-fast-image"
  s.version         = pjson["version"]
  s.homepage        = "https://github.com/DylanVann/react-native-fast-image"
  s.summary         = pjson["description"]
  s.license         = pjson["license"]
  s.author          = { "Dylan Vann" => "dylan.vann@gmail.com" }

  s.ios.deployment_target = '8.0'

  s.source          = { :git => "https://github.com/DylanVann/react-native-fast-image", :tag => "v#{s.version}" }

  s.source_files    = 'ios/FastImage/*.{h,m}'

  s.dependency 'React'
  s.dependency 'SDWebImage'
  s.dependency 'FLAnimatedImage'

end
