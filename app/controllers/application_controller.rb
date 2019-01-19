class ApplicationController < ActionController::Base
  devise_group :user, contains: [:administrator, :student, :teacher]
end
