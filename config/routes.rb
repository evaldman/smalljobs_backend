Rails.application.routes.draw do
  resources :job_categories
  resources :categories
  resources :accepted_jobs
  resources :jobs
  resources :users

end
