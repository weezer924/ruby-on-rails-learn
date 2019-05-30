Rails.application.routes.draw do
  root 'top#index'
  resources :diaries
  get '/users', to: 'users#index'
  get '/users/new'
  get 'about' => 'top#about', as: 'about'
  get 'lesson/:action(/:name)' => 'lesson'
end
