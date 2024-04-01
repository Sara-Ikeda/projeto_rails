Rails.application.routes.draw do
  root to: 'home#catalogo'

  get '/lista_diretors', to: 'home#lista_diretors'
  get '/lista_generos', to: 'home#lista_generos'
  get '/lista_filmes', to: 'home#lista_filmes'

  resources :filmes, only: [:show, :new, :create, :edit, :update]
  resources :generos, only: [:show, :new, :create, :edit, :update]
  resources :diretors, only: [:show, :new, :create, :edit, :update]
end