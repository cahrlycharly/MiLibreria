Rails.application.routes.draw do
  devise_for :usuarios
  resources :prestamos

  resources :lectors

  resources :libros

  resources :autors

  resources :generos

  root :to => 'inicio#index'
  get 'inicio/index'


end
