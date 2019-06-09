Rails.application.routes.draw do
  root 'top#index'
  resources :articles
  resources :diaries
  resources :members do
    collection { get "search" }
  end
  get '/users', to: 'users#index'
  get '/users/new'
  get 'about' => 'top#about', as: 'about'
  get 'lesson/:action(/:name)' => 'lesson'
end
