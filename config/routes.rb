Rails.application.routes.draw do
  root to: 'visitors#index'
  devise_for :users
  resources :users

  resources :products

  mount PostgresqlLoStreamer::Engine => "/product_thumbnail"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
