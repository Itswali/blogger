Rails.application.routes.draw do

  root 'pages#hello'
  get '/users', to: 'users#index', as: 'users'
  get '/users/:id', to: 'users#show', as: 'user'
  get '/users/:id/posts', to: 'posts#index', as: 'user_posts'
  get '/users/:id/posts/:id', to: 'posts#show', as: 'user_post'

end
