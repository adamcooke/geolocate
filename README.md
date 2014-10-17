# Geolocate

A Ruby library which will return information about a given IP using the `ip-api.com` API.

## Installation

Add to your Gemfile as normal and then `bundle` to install.

```ruby
gem "geolocate", "~> 1.0"
```

## Usage

```ruby
if result = Geolocate.find_from_ip('185.22.208.1', :timeout => 4)
  result.country          #=> "United Kingdom"
  result.country_code     #=> "GB"
  result.city             #=> "Poole"
  result.time_zone        #=> "Europe/London"
  result.latitude         #=> 50.7324
  result.longitude        #=> -1.9753
  result.isp              #=> "Atech Media Ltd"
  result.organization     #=> "Atech Media Ltd"
else
  # Failed to do the lookup after 4 seconds maximum.
end
```
