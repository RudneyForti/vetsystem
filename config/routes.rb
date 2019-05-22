Rails.application.routes.draw do
  resources :atendimentos
  resources :animals
  resources :clientes
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get "/home" => "home#inicio"
  
  get "/about" => "about#sobre"
  
  #get "/" => "home#inicio"

devise_for :users, :controllers => { registrations: 'users/registrations', sessions: "users/sessions", passwords: 'users/passwords' } do
    get "/", :to => "users/sessions#create"
  end

  authenticated :user do
  end

  unauthenticated :user do
    devise_scope :user do
      get "/" => "users/sessions#new"
    end
  end
end