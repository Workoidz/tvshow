Rails.application.routes.draw do
  devise_for :users
  get 'home/show'
  get 'home/fav'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :shows
  resources :channels

  root :to => "home#show"

end
