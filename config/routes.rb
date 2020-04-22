Rails.application.routes.draw do

  namespace :Api do
    namespace :V1 do
      resources :plans
    end
  end
end
