Rails.application.routes.draw do
  root "workouts#index"

  resources :workouts do 
    resources :exercises
  end
    
  #get "/workouts", to: "workouts#index"

  #showing single workout
  #get "/workouts/:id", to: "workouts#show"

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
