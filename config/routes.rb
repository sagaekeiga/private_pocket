Rails.application.routes.draw do
  get 'histries/index'

    devise_for :users
    
    resources :histories
    root 'pages#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
