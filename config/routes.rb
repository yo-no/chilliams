Rails.application.routes.draw do
  namespace :admin do
    resources :shows, except: [:index, :show]
    get "/" => "admins#index"
  end

  get '/' => 'pages#index'
  
  get '/shows' => 'shows#index'
  get '/shows/new' => 'shows#new'
  post '/shows/' => 'shows#create'
  get '/shows/:id/edit' => 'shows#edit'
  patch 'shows/:id/' => 'shows#update'

  get  "/signup"  =>  "users#new"
  post  "/users"  =>  "users#create"

  get  "/login"  =>  "sessions#new"
  post  "/login"  =>  "sessions#create"
  get  "/logout"  =>  "sessions#destroy"
end
