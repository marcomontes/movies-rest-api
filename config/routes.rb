Rails.application.routes.draw do
  resources :movies
  resources :people
  
  namespace :api do
    namespace :v1 do
      resources :movies
      resources :people
    end
  end

end
