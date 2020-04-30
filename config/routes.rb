Rails.application.routes.draw do
  devise_for :users
  root to: "movies#index"

  resources :movies
  resources :people
  
  namespace :api do
    namespace :v1 do
      resources :movies
      resources :people
    end

    # JWT - JSON requests at /api/sign_[in|out]
    devise_for :users, defaults: { format: :json },
                     class_name: 'ApiUser',
                           skip: [:registrations, :invitations,
                                  :passwords, :confirmations,
                                  :unlocks],
                           path: '',
                     path_names: { sign_in: 'login',
                                   sign_out: 'logout' }
    devise_scope :user do
      get 'login', to: 'devise/sessions#new'
      delete 'logout', to: 'devise/sessions#destroy'
    end
  end

end
