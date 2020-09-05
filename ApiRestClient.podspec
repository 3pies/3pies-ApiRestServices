Pod::Spec.new do |s|
  s.name          = "ApiRestClient"
  s.version       = "0.0.2"
  s.summary       = "ApiRest wrapper for HTTP Requests"
  s.description   = "ApiRest wrapper for HTTP Requests"
  s.homepage      = "https://github.com/3pies/3pies-ApiRestServices"
  s.license       = "MIT"
  s.author        = { "danielferrer" => "dferrer@3pies.es" }
  s.social_media_url   = "https://twitter.com/3pies"
  s.platform      = :ios, "11.0"
  s.swift_versions = ['5.1', '5.2']
  s.source        = {
    :git => "git@github.com:3pies/3pies-ApiRestServices.git",
    :tag => "#{s.version}"
  }
  s.source_files        = "**/*.{h,m,swift}"
  s.public_header_files = "**/*.h"
  
  s.dependency 'Alamofire'
end
