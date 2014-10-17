require 'net/http'
require 'json'
require 'geolocate/result'

module Geolocate
  
  def self.find_from_ip(ip, options = {})
    return nil unless ip =~ /\A(\d+)\.(\d+)\.(\d+)\.(\d+)\z/
    options[:timeout] ||= 4
    Timeout.timeout(options[:timeout]) do 
      result = Net::HTTP.get("ip-api.com", "/json/#{ip}") rescue nil
      if result && json = (JSON.parse(result) rescue nil)
        if json['status'] == 'success'
          result = Result.new
          result.ip = json['query']
          result.country = json['country']
          result.country_code = json['countryCode']
          result.city = json['city']
          result.time_zone = json['timezone']
          result.latitude = json['lat']
          result.longitude = json['lon']
          result.isp = json['isp']
          result.organization = json['org']
          result
        else
          false
        end
      end
    end
  rescue Timeout::Error
    false
  end
  
end
