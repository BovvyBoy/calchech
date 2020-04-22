Rails.application.routes.draw do

  
  namespace :api do
    namespace :v1 do
      resources :plans
      resources :days
    end
  end
end
