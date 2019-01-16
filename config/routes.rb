Rails.application.routes.draw do

  root 'welcome#greetings'
  
  devise_for :students
  devise_for :admins
  devise_for :users

  namespace :admin do
  	resources :students
  end
end
