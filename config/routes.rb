Rails.application.routes.draw do
  devise_for :users
  devise_for :administrators
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'greetings#index'
  namespace :administrator_cabinet do
    resources :welcome, only: [:index]
  end
end
