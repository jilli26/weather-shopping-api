Rails.application.routes.draw do

  # get '/pickOutfit' => "items#pickOutfit"

  namespace :api do
    namespace :v1 do
      resources :notes, only: [:index, :create]
    end
  end

  namespace :api do
    namespace :v1 do
      resources :items, only: [:index, :create, :show]
      post '/pickOutfit' => "items#pickOutfit"
      get '/pickOutfit' => "items#pickOutfit"
    end
  end

end
