Rails.application.routes.draw do
  resources :mov_estoques
  resources :operacaos
  resources :cad_produtos
  resources :unidades
  resources :produtos
  resources :pessoas
  resources :enderecos
  resources :cidades
  resources :estados
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
