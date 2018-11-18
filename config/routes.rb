 Rails.application.routes.draw do

  post "login", to: "google_user_token#create"
  post 'fb_create' => 'users#create_fb_user'
    #end
  scope :auth do
    scope :sign_in do 
      post "token", to: "user_token#create"
    end
  end
    
  # GET current user's data
  get "users/current" => "users#current"
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :blog_tag_mediator

  resources :blogs

  resources :breeds do
    get 'num_of_dogs', to: 'breeds#num_of_dogs'
  end

  resources :dogs do
    collection do
    end
    #get 'info', to: 'dogs#get_info'
  end

  resources :locations

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

  resources :tags

  resources :users do
    collection do
    end
    get 'info', to: 'users#get_info'
    get 'num_of_dogs', to: 'users#num_of_dogs'
  end

  patch '/users/updatepass/:id', to: 'users#updatepass'

  # Para certificados
  resources :certificados, except: [:destroy]
  delete '/certificados/delete/:id/:dog_id/:user_id', to: 'certificados#destroycertificado'
  delete '/certificados/deleteall/:dog_id/:user_id', to: 'certificados#destroyall'
end
