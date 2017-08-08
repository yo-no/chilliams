Rails.application.routes.draw do

  get 'videos/index'

  get 'shows/index'

  namespace :admin do
    get '', to: 'dashboard#index', as: '/'
    resources :shows
    resources :videos
  end

  get '/' => 'pages#index'
  
  get '/shows' => 'shows#index'

  # vvv admin vvv
  get '/shows/new' => 'shows#new'
  post '/shows/' => 'shows#create'
  get '/shows/:id/edit' => 'shows#edit'
  patch 'shows/:id/' => 'shows#update'
  ### note to make it so that shows that are past don't show up

  get '/videos' => 'videos#index'

  # vvv admin vvv
  get '/videos/new' => 'videos#new'
  post '/videos/' => 'videos#create'
  get '/videos/:id/edit' => 'videos#edit'
  patch 'videos/:id/' => 'videos#update'

  get  "/signup"  =>  "users#new"
  post  "/users"  =>  "users#create"

  get  "/login"  =>  "sessions#new"
  post  "/login"  =>  "sessions#create"
  get  "/logout"  =>  "sessions#destroy"
end
