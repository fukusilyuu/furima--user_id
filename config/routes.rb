Rails.application.routes.draw do
  devise_for :users
  root 'items#index'
  resources :reports
  resources :comments
  resources :replies, only: [:create]
  resources :items do
    resources :comments do
      resources :replies, only: [:create] do 
    resources :orders, only: [:index, :create] 
    collection do
      get 'search'
       end
      end
    end
  end
end
