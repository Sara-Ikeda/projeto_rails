Rails.application.routes.draw do
  root to: 'home#catalogo'

  resources :filmes, only: [:show, :new, :create, :edit, :update]
  resources :generos, only: [:show, :new, :create, :edit, :update]
  resources :diretors, only: [:show, :new, :create, :edit, :update]
end
