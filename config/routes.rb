Rails.application.routes.draw do

  match "/404", :to => "errors#not_found", :via => :all
  match "/500", :to => "errors#internal_server_error", :via => :all

  get 'errors/not_found'

  get 'errors/internal_server_error'

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
