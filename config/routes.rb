Rails.application.routes.draw do
  #get 'vegs/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root to: 'pages#home'
  get '/salut', to:'pages#salut'
  resources :vegs

end
