Rails.application.routes.draw do
  get 'about', to: 'pages#about'
  get 'contact', to: 'pages#contact'

  root to: 'pages#home'
  # get 'PATH', to: 'CONTROLLER#ACTION'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
