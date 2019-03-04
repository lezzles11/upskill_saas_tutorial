Rails.application.routes.draw do
  root to: 'pages#home'
  get 'thebeginning', to: 'pages#thebeginning'
end
