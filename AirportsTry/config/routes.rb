AirportsTry::Application.routes.draw do
  get "/airports" => 'airports#index'
  get "/details" => 'airports#details'
end
