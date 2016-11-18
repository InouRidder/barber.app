Rails.application.routes.draw do
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }

  resources :availabilities

  resources :barbers do
    resources :availabilities
    resources :reviews
    resources :appointments
    resources :barbershops
    resources :barber_services
  end
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
