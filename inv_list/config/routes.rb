Rails.application.routes.draw do

  root 'inventories#index'
  
  get 'index' => 'inventories#index'

  get 'show' => 'inventories#show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
