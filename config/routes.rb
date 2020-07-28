Rails.application.routes.draw do
  namespace :portal do
    resources :offers
    root 'offers#index'
  end
  root 'home#index'
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html


  
end
