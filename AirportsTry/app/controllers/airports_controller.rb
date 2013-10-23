class AirportsController < ApplicationController

  def index
    @airports = all_airports
  end

  def details
    airport_id = params["id"].to_i
    @airport = all_airports[airport_id]
  end

  def all_airports
  return [
    {id: '0', code: 'ORD', city: 'Chicago'},
    {id: '1', code: 'LAX', city: 'Los Angeles'},
    {id: '2', code: 'BOS', city: 'Boston'},
    {id: '3', code: 'MDW', city: 'Chicago'},
    {id: '4', code: 'PDX', city: 'Portland'},
    {id: '5', code: 'AUS', city: 'Austin'}
   ]
  end
end
