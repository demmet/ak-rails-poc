Rails.application.routes.draw do

  root :to => 'sessions#home'

  # People routes
  resources :people

  # Sessions routes
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  get '/home', to: 'sessions#home'
  get '/configurations', to: 'sessions#configurations'
  post '/configurations', to: 'sessions#save_configurations'

  # Biometries routes
  get '/face', to: 'biometries#face'
  get '/finger', to: 'biometries#finger'
  get '/signature', to: 'biometries#signature'
  get '/edit', to: 'biometries#edit'
end
