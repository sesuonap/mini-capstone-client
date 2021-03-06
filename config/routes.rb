Rails.application.routes.draw do

  get '/' => 'client/products#index'

  get "/signup" => "users#new"
  post "/users" => "users#create"
  
  get "/login" => "sessions#new"
  post "/login" => "sessions#create"
  delete "/logout" => "sessions#destroy"
  
  namespace :client do 
    get '/products' => 'products#index'
    get '/products/new' => 'products#new'
    post '/products' => 'products#create'
    get '/products/:id' => 'products#show'
    get '/products/:id/edit' => 'products#edit'
    patch '/products/:id' => 'products#update'
    delete '/products/:id' => 'products#destroy'

    
    post '/orders' => 'orders#create'
    get '/orders/:id' => 'orders#show'

   
   get '/carted_products/new' => 'carted_products#new'
    post '/carted_products' => 'carted_products#create'
  end 
end
