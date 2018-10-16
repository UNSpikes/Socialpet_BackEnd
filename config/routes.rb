# == Route Map
#
#                    Prefix Verb   URI Pattern                                                                              Controller#Action
#                     users GET    /users(.:format)                                                                         users#index
#                           POST   /users(.:format)                                                                         users#create
#                      user GET    /users/:id(.:format)                                                                     users#show
#                           PATCH  /users/:id(.:format)                                                                     users#update
#                           PUT    /users/:id(.:format)                                                                     users#update
#                           DELETE /users/:id(.:format)                                                                     users#destroy
#        rails_service_blob GET    /rails/active_storage/blobs/:signed_id/*filename(.:format)                               active_storage/blobs#show
# rails_blob_representation GET    /rails/active_storage/representations/:signed_blob_id/:variation_key/*filename(.:format) active_storage/representations#show
#        rails_disk_service GET    /rails/active_storage/disk/:encoded_key/*filename(.:format)                              active_storage/disk#show
# update_rails_disk_service PUT    /rails/active_storage/disk/:encoded_token(.:format)                                      active_storage/disk#update
#      rails_direct_uploads POST   /rails/active_storage/direct_uploads(.:format)                                           active_storage/direct_uploads#create

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
