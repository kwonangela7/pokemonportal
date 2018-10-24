Rails.application.routes.draw do
  devise_for :trainers
  root to: "home#index"
  resources :trainers #creates these paths for us that we see in the rails routes
  # it doesn't depend on the model
  patch '/capture', to: 'pokemon#capture', as: 'capture'
end
