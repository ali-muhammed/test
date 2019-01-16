Rails.application.routes.draw do

  root 'welcome#greetings'
  get 'students/:id/show' => 'students#show', as: 'student_show'
  devise_for :students
  devise_for :admins
  devise_for :users

  namespace :admin do
  	resources :students
  end
end
