Rails.application.routes.draw do
  resources :languages do
    member do
      resources :comments
    end
  end

  get 'pages/index'
  root 'pages#index'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
