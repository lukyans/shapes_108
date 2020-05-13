Rails.application.routes.draw do
  resources :applications
  devise_for :users

  root 'home#index'
  get 'home/index', to: 'home#index';
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
