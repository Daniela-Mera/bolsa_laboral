Rails.application.routes.draw do
  resources :oportunidads
  devise_for :postulantes
  devise_for :empresas
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  get "sites/index"
  

  # root "articles#index"
  root to: "sites#index"
  get "/oportunidades", to:"oportunidads#index" #/oportunidades
  get "/postulantes", to:"postulantes#index" #/postulantes/sign_in
  get "/empresas", to:"empresas#index" #/empresas/sign_in

  
end
