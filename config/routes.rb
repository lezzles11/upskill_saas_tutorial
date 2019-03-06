Rails.application.routes.draw do
  root to: 'pages#home'
  get 'thebeginning', to: 'pages#thebeginning'
  get 'theclimax', to: 'pages#theclimax'
  resources :contacts
end
