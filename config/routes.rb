 Rails.application.routes.draw do

    #scope :google do 
      post "login", to: "google_token#create"
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

  resources :blogs do
    get 'info', to: 'blogs#get_info'
  end

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
  resources :photo_galeries
  get 'photo_galeries/showdogid/:dog_id', to: 'photo_galeries#showdogid'
  delete 'photo_galeries/destroydogidall/:dog_id', to: 'photo_galeries#destroydogidall'

  #Para Tags
  resources :tags

  get '/users/countDogs', to: 'users#countDogs'
  
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
