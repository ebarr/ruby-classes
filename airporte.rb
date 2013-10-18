require './airports_api.rb'
require './weather_api'

class Airport
  def code=(my_airport_code)
    @code = my_airport_code
  end

  def code
    return @code
  end

  def delay
    current_delay = get_airport_delay(@code)
    return current_delay
  end



  def temperature
  coordinates = get_coordinates(@code)
  current_temp = get_current_temperature(coordinates.first, coordinates.last)
    return current_temp.to_i
  end

end

