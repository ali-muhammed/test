Rails.application.routes.draw do

  devise_for :users
  devise_for :students
  devise_for :administrators
  devise_for :teachers
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'welcome#greetings'

    namespace :administrator_cabinet do
        resources :welcome, only: [:index]
        resources :students
        resources :teachers
    end

    namespace :student_cabinet do
        resources :welcome, only: [:index]
        resources :students, only: [:show]
    end

    namespace :teacher_cabinet do
        resources :welcome, only: [:index]
        resources :teachers, only: [:show]
    end


end
