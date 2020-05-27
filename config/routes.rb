Rails.application.routes.draw do
  root to: 'homes#index', as: 'home'
  resources :customers, only: [:index, :new, :create, :show, :edit, :update, :destroy]
  resources :orders, only: [:index, :new, :create, :show, :edit, :update, :destroy]
  resources :reviews, only: [:index, :new, :create, :show, :edit, :update, :destroy]
  resources :sushis, only: [:index, :new, :create, :show, :edit, :update, :destroy]
  resources :oceans, only: [:index, :new, :create, :show, :edit, :update, :destroy]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
