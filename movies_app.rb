require 'http'
puts enter url
response = HTTP.get("#{gets.chomp}")
output = response.parse
puts output