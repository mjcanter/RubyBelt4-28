Rails.application.routes.draw do

  get '/shoes' => 'shoe#index'
  post '/shoes/new' => 'shoe#create'
  post '/shoes/buy' => 'shoe#buy'
  get '/shoes/delete/:id' => 'shoe#delete'

  get '/users' => 'user#index'

  get 'user/edit'

  get 'user/show'

  get '/' => 'session#index'
  post '/new' => 'session#create'
  get '/' => 'session#index'
  post '/login' => 'session#login'
  get '/logout' => 'session#logout'

end
