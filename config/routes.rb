Rails.application.routes.draw do
  get 'posts/index'
  get 'posts/show'
  #get 'topics/new'
  get 'sessions/new'
  #get 'users/new'
  #get 'pages/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'pages#index'
  #get 'pages/help'
  get "pages/help"

  delete '/topics' , to: 'topics#destroy'
  delete '/comments' , to: 'comments#destroy'
  
  resources :users
  
  get '/login'      , to: 'sessions#new'      #ログインするためのフォームを表示するページを取得
  post '/login'     , to: 'sessions#create'   #新しくｱﾄﾞﾚｽぱパスワード送信してもらいデータを基にセッション作成
  delete '/logout'  , to: 'sessions#destroy'  #ログアウトでセッション削除
  
  #resources :users
  resources :topics
  
  get 'favorites/index'
  post '/favorites', to: 'favorites#create'
  delete '/favorites', to: 'favorites#destroy'
  
  #post '/comments' , to: 'comments#create'
  #post '/comments' , to: 'comments#new'
  get 'comments/new'
  resources :comments
end
