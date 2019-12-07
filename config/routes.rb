Rails.application.routes.draw do
  # root 'index#index'
  root 'login#index'
  post 'login' => 'login#login'

  get '_home' => 'index#_home'
  get '_empresas' => 'index#_empresas'
  get '_competencias' => 'index#_competencias'
  get '_colaboradores' => 'index#_colaboradores'
  get '_projetos' => 'index#_projetos'
  
  resources :admins
  resources :colaborador_avaliadors
  resources :projeto_consultors
  resources :consultors
  resources :projeto_colaboradors
  resources :projetos
  resources :competencia
  resources :colaboradors
  resources :empresas
  resources :enderecos
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
