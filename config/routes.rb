Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  # Para Users
  resources :users

  # Para Dogs
  resources :dogs
  get '/dogs/showcomplete/:id/:user_id', to: 'dogs#showcomplete'
  delete '/dogs/destroycomplete/:id/:user_id', to: 'dogs#destroycomplete'

  # Para Breeds
  resources :breeds, except: [:update]
  delete '/breeds/deletename/:breed_type', to: 'breeds#destroyforname'
  get '/breeds/showname/:breed_type', to: 'breeds#showforname'

  # Para Tags
  resources :tags
  delete '/tags/deletename/:tag_name', to: 'tags#destroyforname'
end
