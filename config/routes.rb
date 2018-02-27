Rails.application.routes.draw do
  resources :people

  root :to => "sessions#login"
  get "/login", :to => "sessions#login"
  get "/logout", :to => "sessions#logout"
  get "/login_attempt", to: "sessions#login_attempt"
end
