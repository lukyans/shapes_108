Rails.application.routes.draw do
  get 'launchpad/show'
  devise_for :users, controllers: { registrations: "registrations" }

  root 'home#index'
  get 'home/index', to: 'home#index';
  get 'launchpads/:id' => "launchpads#show", as: "launchpad"

  get 'shape_users/:id/add' => "shape_users#add", as: "shape_user_add"
  get 'shape_users/:id/hide' => "shape_users#hide", as: "shape_user_hide"
  get 'shape_users' => "shape_users#create"
  get 'shape_users/:id' => "shape_users#show", as: "shape_user"
  delete 'shape_users/:id' => "shape_users#destroy"

  resources :shapes
end
