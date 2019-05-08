Rails.application.routes.draw do

  get 'teste/index'
  root 'teste#index'
  

  
  devise_for :usuarios

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
