Rails.application.routes.draw do
  #get 'topics/new'
  get 'sessions/new'
  #get 'users/new'
  #get 'pages/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'pages#index'
  #get 'pages/help'
  get "pages/help"
  
  resources :users
  
  get '/login'      , to: 'sessions#new'      #取得
  post '/login'     , to: 'sessions#create'   #作成
  delete '/logout'  , to: 'sessions#destroy'  #削除
  
  resources :users
  resources :topics
  
  get 'favorites/index'
  post '/favorites', to: 'favorites#create'
  delete '/favorites', to: 'favorites#destroy'
  
end
