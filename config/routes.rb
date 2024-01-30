Rails.application.routes.draw do
  resources :locations do
    scope module: :locations do
      resources :reservations, only: [:new, :create]
    end
  end
  devise_for :owners
  devise_for :customers

  resource :booking, only: [:show], controller: :booking
  resources :active_reservations, only: [:index]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check
 
  authenticated :owner do
    root to: 'locations#index', as: :authenticated_owner_root
  end

  authenticated :customer do
    root to: 'booking#show', as: :authenticated_customer_root
  end

  # Defines the root path route ("/")
  root "pages#home"
end
