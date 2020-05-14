Rails.application.routes.draw do
  devise_for :users

  root 'home#index'
  get 'home/index', to: 'home#index';

  resources :shapes do
    member do
      get :hide
      get :add
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
