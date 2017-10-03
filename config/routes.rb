Rails.application.routes.draw do

  namespace :api do
    namespace :v1 do
      resources :notes, only: [:index, :create]
    end
  end

  namespace :api do
    namespace :v1 do
      resources :items, only: [:index, :create, :show]
    end
  end

end
