Rails.application.routes.draw do
  root to: 'dashboard#show'
  resources :samples
end
