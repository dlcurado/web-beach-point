Rails.application.routes.draw do
  get 'pages/home'

  get 'pages/sobre'

  get 'pages/login'

  get 'pages/perfil'

  get 'pages/ajuda'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "home/index"
  
  root :to => "pages#home"
  
  resources :usuarios, :tipos, :grupos
  
  #get "/", :to => "pages#home"
  get "/sobre", :to => "pages#sobre"
  get "/login", :to => "pages#login"
  get "/perfil", :to => "pages#perfil"
  get "/ajuda", :to => "pages#ajuda"
  
end
