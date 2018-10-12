Rails.application.routes.draw do

  devise_for :users
  resources :users
  root 'home#index'
  resources :posts #, only: [:index , :show ]
  get 'home/index'
  get 'some_another_url', to: 'home#index'
  get  '/home/(:hello)', to:  'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
