Rails.application.routes.draw do



  namespace :admin do
    get '', to: 'dashboard#index', as: '/'
    resources :shows
    resources :videos
  end

  get '/' => 'pages#index'
  
  get '/shows' => 'shows#index'

  get '/videos' => 'videos#index'

  get  "/login"  =>  "sessions#new"
  post  "/login"  =>  "sessions#create"
  get  "/logout"  =>  "sessions#destroy"
end
