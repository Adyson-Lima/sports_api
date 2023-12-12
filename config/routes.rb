Rails.application.routes.draw do

  namespace :api do
    namespace :v1 do
      resources :sports
    end
  end
  
end
