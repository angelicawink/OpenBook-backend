Rails.application.routes.draw do
  namespace :api do
      namespace :v1 do
        resources :users
        resources :moments
        resources :feelings
        resources :entries
        get '/users/:id/moments', to: 'users#moments'
        get '/users/:id/entries', to: 'users#entries'
      end
    end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
