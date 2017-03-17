Rails.application.routes.draw do
  get '/categories', to: 'categories#index'
  root to: 'pages#index'
end
