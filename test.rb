require "http"
require "json"
require "cgi"
api_key1 = ""
api_key2 = ""

origin = "157 Adams St., Stockton, California, 95204"
destination = "Chicago, Illinois"

origin = CGI.escape(origin)

response = HTTP.get("https://api.mapbox.com/geocoding/v5/mapbox.places/#{origin}.json?proximity=ip&access_token=#{api_key2}")

response = JSON.parse(response)
longitude = response["features"][0]["geometry"]["coordinates"][0]
lattitude = response["features"][0]["geometry"]["coordinates"][1]

p longitude
p lattitude

response1 = HTTP.get("https://api.mapbox.com/directions-matrix/v1/mapbox/driving/#{longitude};#{lattitude}?sources=0;2&destinations=all&access_token=#{api_key1}")
response1 = JSON.parse(response1)

p response1
