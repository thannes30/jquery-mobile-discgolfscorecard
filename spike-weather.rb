
require 'httparty'
# ZIP CODE
response = HTTParty.get("http://api.wunderground.com/api/2f1ce0c3fb4069a3/conditions/q/07401.json")
# City, State
# response = HTTParty.get("http://api.wunderground.com/api/2f1ce0c3fb4069a3/conditions/q/NY/New_York.json")



#search method
#   def self.location_search(query)
#     escaped_query = query.gsub(' ', '')
#     query_string = "#{escaped_query}"
#     url = "http://api.wunderground.com/api/2f1ce0c3fb4069a3/conditions/q/#{query_string}.json"
#     raw_response = HTTParty.get(url)
#     response = JSON.parse(raw_response)
#     raw_conditions = response['results']
#     package_conditions = raw_conditions.map do |conditions|
#       {
#          =>
#          =>
#          =>
#       }
#   end
#   return package_weather
# end



def self.location_lookup(zipcode)
  url = "http://api.wunderground.com/api/2f1ce0c3fb4069a3/conditions/q/#{zipcode}.json"
  raw_response = HTTParty.get(url)
  response = JSON.parse(raw_response)
  raw_conditions = response['response'].first

  weather_hash = {
    icon: raw_conditions['current_observation']['icon'],
    temp: raw_conditions['current_observation']['temp_f'],
    wind: raw_conditions['current_observation']['wind_mph']
  }

end
