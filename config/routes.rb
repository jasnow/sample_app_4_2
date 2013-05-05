SampleApp31::Application.routes.draw do

  resources :users do
    member do
      get :following, :followers
    end
  end
  resources :sessions,      :only => [ :new, :create, :destroy ]
  resources :microposts,    :only => [ :create, :destroy ]
  resources :relationships, :only => [ :create, :destroy ]

  #resources :users do
  #  resources :microposts, :only => [:create, :destroy]
  #end

  get "/signup",  :to => 'users#new'
  get "/signin",  :to => 'sessions#new'
  get "/signout", :to => 'sessions#destroy'
  get "/contact", :to => 'pages#contact'
  get "/about",   :to => 'pages#about'
  get "/help",    :to => 'pages#help'
  root :to => 'pages#home'
end
