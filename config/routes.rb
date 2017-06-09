Rails.application.routes.draw do

    devise_for :users

  namespace :api, { format: 'json' } do
    namespace :v1, { format: 'json' } do 
      resources :histories
    end
  end
  
    resources :histories
    root 'pages#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
