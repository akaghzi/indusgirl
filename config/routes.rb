Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }
  resources :categories
  root 'home#index'

  get 'home/contactus'

  get 'home/help'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
