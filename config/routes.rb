Rails.application.routes.draw do
  resources :photos
  resources :messages
  resources :users do
    resources :messages, only: [:index]
  end

  post '/login' => 'sessions#create'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
