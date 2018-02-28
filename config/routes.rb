Rails.application.routes.draw do
  resources :people

  root :to => 'sessions#login'
  
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
end
