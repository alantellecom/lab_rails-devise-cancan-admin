Rails.application.routes.draw do

  namespace :admin do
      resources :usuarios

      root to: "usuarios#index"
    end
  get 'teste/index'
  root 'teste#index'
  

  
  devise_for :usuarios

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
