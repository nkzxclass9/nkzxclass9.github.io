Rails.application.routes.draw do
  # index - GET - /users /comments
  # new - GET - /users/new
  # create - POST - /users
  # edit - GET /users/:id/edit
  # update - PATCH/PUT - /users/:id
  # show - GET - /users/:id
  # destroy - DELETE - /users/:id
  resources :comments, only: [:index, :create]
  # except: [:new]
  #post '/comments', to: 'comments#create'
  #get '/comments', to: 'comments#index'
  get '/categories', to: 'categories#index'
  root to: 'pages#index'
end
