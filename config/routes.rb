Rails.application.routes.draw do
  devise_for :trainers
  root to: "home#index"
  resources :trainers #creates these paths for us that we see in the rails routes
  # perhaps handled the error for trainer id (wrong string interpolation) as just showing the view of trainers
  # it doesn't depend on the model
  patch '/capture', to: 'pokemon#capture', as: 'capture'
  patch '/damage', to: 'pokemon#damage', as: 'damage'
end
