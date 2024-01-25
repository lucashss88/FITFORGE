Rails.application.routes.draw do

  get 'dashboard/index'
  root 'home#index'
  resources :exercise_sessions
  resources :workouts
  devise_for :users
  resources :exercises
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
