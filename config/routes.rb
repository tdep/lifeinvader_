# Your house, your rules
# URL rules, that is!!!!
Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/users', to: 'users#index'
  get '/users/:id', to: 'users#show'
  get '/posts', to: 'posts#index'
  get '/posts/:id', to: 'posts#show'
  post '/posts', to: 'posts#create'
  patch '/posts/:id', to: 'posts#update'
  delete '/posts/:id', to: 'posts#destroy'
  
end
