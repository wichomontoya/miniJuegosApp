Rails.application.routes.draw do

	devise_for :users, controllers: {
        sessions: 'users/sessions'
      }

  get 'games/home'
  get 'games/index'
  get 'games/show'

  root to: 'games#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
