# Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  # get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
  # ========================================== bootstrap end ================================
Rails.application.routes.draw do
  resources :video_cover_letters
  # go to video at startup
  root "video_cover_letters#index" 
  # add a video_cover_letter route to portfolio
  # newbQ: style guide suggests snake_case, but it feels weirder than whatever-case-this-is
  get "/videos", to: "video_cover_letters#index"

  # view single video by ID
  get "/videos/:id", to: "video_cover_letters#show"
end
