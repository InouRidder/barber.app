Rails.application.routes.draw do
  resources :barbers do
    resources :reviews
    resources :appointments
  end

  resources :users

  root to: 'barbers#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
