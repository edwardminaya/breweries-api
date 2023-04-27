Rails.application.routes.draw do
  # breweries index
  get "breweries" => "breweries#index"
end
