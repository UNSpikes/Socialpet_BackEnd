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

  # Para photo_galeries
  resources :photo_galeries, only: [:index, :show, :destroy]
  # con dog
  get '/photo_galeries/showdogid/:dog_id/:user_id', to: 'photo_galeries#showdogid'
  post '/photo_galeries/:image/:dog_id/:user_id', to: 'photo_galeries#createdogid'
  delete '/photo_galeries/:dog_id/:user_id', to: 'photo_galeries#destroydogidall'
  #delete '/photo_galeries/:id', to: 'photo_galeries#destroydogid'

  # con blog
  get '/photo_galeries/showblogid/:id/:blog_id', to: 'photo_galeries#showblogid'
  get '/photo_galeries/showblogid/:blog_id', to: 'photo_galeries#showblogidall'
  post '/photo_galeries/:image/:blog_id', to: 'photo_galeries#createblogid'
  delete '/photo_galeries/:blog_id', to: 'photo_galeries#destroyblogid'
end
