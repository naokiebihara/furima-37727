Rails.application.routes.draw do
  devise_for :users
  root to: 'orders#index'
  resources :items do
   resources :orders, only:[:create]
  end
end