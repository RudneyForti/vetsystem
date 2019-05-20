Rails.application.routes.draw do
  resources :atendimentos
  resources :animals
  resources :clientes
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get "/home" => "home#inicio"
  
  get "/about" => "about#sobre"

end
