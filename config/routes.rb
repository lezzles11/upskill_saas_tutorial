Rails.application.routes.draw do
  root to: 'pages#home'
  get 'thebeginning', to: 'pages#thebeginning'
  get 'gridbeginning', to: 'pages#gridbeginning'
  get 'theclimax', to: 'pages#theclimax'
  resources :contacts, only: :create
  get 'contact-us', to: 'contacts#new', as: 'new_contact'
end
