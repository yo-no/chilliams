Rails.application.routes.draw do
  namespace :admin do
    resources :shows, except: [:index, :show]
    get "/" => "admins#index"
  end

  get '/' => 'pages#index'
  get '/shows' => 'shows#index'

  get  "/signup"  =>  "users#new"
  post  "/users"  =>  "users#create"

  get  "/login"  =>  "sessions#new"
  post  "/login"  =>  "sessions#create"
  get  "/logout"  =>  "sessions#destroy"
end
