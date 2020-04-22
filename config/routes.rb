Rails.application.routes.draw do

  namespace :api do
    namespace :v1 do
      resources :plans
      resources :days
      resources :meals
      resources :recipes
      resources :ingredients
    end
  end
end
