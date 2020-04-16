Rails.application.routes.draw do
  resources :posts do 
    resources :comments
  end
    resources :users
  post '/auth/login', to: 'authentication#login'
  get '/*a', to: 'application#not_found'
end
