Rails.application.routes.draw do
  devise_for :users
  root 'items#index'
  resources :comments
  resources :items do
    resources :comments do
    resources :orders, only: [:index, :create] 
    collection do
      get 'search'
      end
    end
  end
end
