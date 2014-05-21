module Weather

  def self.location_lookup(zipcode)
    url = "http://api.wunderground.com/api/2f1ce0c3fb4069a3/conditions/q/#{zipcode}.json"
    raw_response = HTTParty.get(url)
    response = raw_response.to_hash
    raw_conditions = response['current_observation']

    weather_hash = {
      weather: raw_conditions['weather'],
      temperature: raw_conditions['temp_f'],
      wind: raw_conditions['wind_mph']
     }
  end

end
