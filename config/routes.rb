Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :users, only: [:index]
    end
  end
  
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
end
