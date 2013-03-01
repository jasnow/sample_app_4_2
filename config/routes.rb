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

  # Rails 4.0 ERROR (Found 3/1/2013)
  #  Instead of: match "controller#action"
  #  Do: get "controller#action"
  #
  #  match "/signup",  :to => 'users#new'
  #  match "/signin",  :to => 'sessions#new'
  #  match "/signout", :to => 'sessions#destroy'
  #  match "/contact", :to => 'pages#contact'
  #  match "/about",   :to => 'pages#about'
  #  match "/help",    :to => 'pages#help'

  get "/signup",  :to => 'users#new'
  get "/signin",  :to => 'sessions#new'
  get "/signout", :to => 'sessions#destroy'
  get "/contact", :to => 'pages#contact'
  get "/about",   :to => 'pages#about'
  get "/help",    :to => 'pages#help'
  root :to => 'pages#home'
end
