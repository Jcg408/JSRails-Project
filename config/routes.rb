Rails.application.routes.draw do

  root 'sessions#home'

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'
  
  # route added for staff admin scope methods - eventually will build out staff and admin section.
  get '/admin' => 'staffs#admin'
  get '/meet' => 'staffs#meet'
  
  # omniauth/facebook route
  get '/auth/facebook/callback' => 'sessions#omniauth_create'

 resources :clients, except: [:edit, :update, :destroy]
 resources :staffs
 resources :appointments, only: [:create, :edit, :update]

 # nested resource appointments new, index, show, destroy
 resources :services do 
    resources :appointments, except: [ :create, :edit, :update]
  end


end

