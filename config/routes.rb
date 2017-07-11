Rails.application.routes.draw do
  namespace :admin do
    resources :shows, except: [:index, :show]
    get "/" => "admins#index"
  end

  get '/' => 'pages#index'
  get '/shows' => 'shows#index'
end
