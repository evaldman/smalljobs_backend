Rails.application.routes.draw do
  resources :job_categories
  resources :categories
  resources :accepted_jobs
  resources :jobs
  resources :users

  post '/login', to: 'users#login'
  post '/signup', to: 'users#signup'
  get "/me", to: "users#show"
  patch "/me", to: "users#update"

 

end
