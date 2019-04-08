Rails.application.routes.draw do
  root to: 'pages#home'
  resources :philmeds
  get 'thebeginning', to: 'pages#thebeginning', as: 'week_one'
  get 'weektwo', to: 'pages#weektwo', as: 'week_two'
  get 'weekthree', to: 'pages#weekthree', as: 'week_three'
  get 'theclimax', to: 'pages#theclimax'
  get 'reflections', to: 'pages#reflections'
  get 'weekfour', to: 'pages#weekfour', as: 'week_four'
  get 'weekfive', to: 'pages#weekfive', as: 'week_five'
  get 'weeksix', to: 'pages#weeksix', as: 'week_six'
  resources :contacts, only: :create #the line below already leads us to contacts. Thats why you only do create. 
  get 'contact-us', to: 'contacts#new', as: 'new_contact' #to add custom URL 

end
