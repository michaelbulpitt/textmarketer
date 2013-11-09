require "textmarketer/version"
require 'net/http'
require 'uri'

module Textmarketer
  def self.send username, password, to, message, from
  	requested_url = 'http://api.textmarketer.co.uk/gateway/?option=xml' + "&username=" + username + "&password=" + password + "&to=" + to + "&message=" + URI.escape(message) + "&orig=" + URI.escape(from)
	  url = URI.parse(requested_url)
	  full_path = (url.query.blank?) ? url.path : "#{url.path}?#{url.query}"
	  the_request = Net::HTTP::Get.new(full_path)
	  the_response = Net::HTTP.start(url.host, url.port) { |http|
	    http.request(the_request)
	  }
	  raise "Response was not 200, response was #{the_response.code}" if the_response.code != "200"
  end
end
