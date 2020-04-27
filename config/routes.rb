Rails.application.routes.draw do

  namespace :api do
    namespace :v1 do
      resources :plans do
        resources :days do
          resources :meals
        end
      end
      resources :meals do 
        resources :ingredients
      end
      resources :ingredients do
        resources :meals
      end
    end
  end
end
