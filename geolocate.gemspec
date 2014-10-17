Gem::Specification.new do |s|
  s.name        = "geolocate"
  s.version     = '1.0.0'
  s.authors     = ["Adam Cooke"]
  s.email       = ["adam@atechmedia.com"]
  s.homepage    = "http://github.com/adamcooke/geolocate"
  s.licenses    = ['MIT']
  s.summary     = "A library to return information about a given IP (currently using ip-api.com)"
  s.description = s.summary
  s.files = Dir["{lib}/**/*"]
  s.add_dependency "json", "~> 1"
end
