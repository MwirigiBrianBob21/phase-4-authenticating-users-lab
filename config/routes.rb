Rails.application.routes.draw do
  resources :articles, only: [:index, :show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # posting and deleting user in controllers
  post 'login', action: :create, controller: 'sessions'
  delete '/logout', to: 'sessions#destroy'

  get '/me', action: :show, controller: 'users'
end
