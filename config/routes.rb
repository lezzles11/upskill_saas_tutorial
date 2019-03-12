Rails.application.routes.draw do
  root to: 'pages#home'
  resources :philmeds, only: :create
  get 'philosophical-meditation', to: 'philmeds#new', as: 'new_philmed'
  get 'thebeginning', to: 'pages#thebeginning', as: 'week_one'
  get 'gridbeginning', to: 'pages#gridbeginning', as: 'week_two'
  get 'theclimax', to: 'pages#theclimax'
  resources :contacts, only: :create #the line below already leads us to contacts. Thats why you only do create. 
  get 'contact-us', to: 'contacts#new', as: 'new_contact' #to add custom URL 
end
