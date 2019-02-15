Rails.application.routes.draw do

  get 'owner/index'
  get 'owner/show'
  resources :dogs, only: [:index, :show]
 # get 'dogs/index'
  get 'dogs/show'
  get 'index/show'

  root to: 'dogs#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
