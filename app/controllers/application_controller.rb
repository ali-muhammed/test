class ApplicationController < ActionController::Base
  
  devise_group :user, contains: [:administrator, :student]

  def after_sign_in_path_for(current_user)
    if current_user.type == "Administrator"
      administrator_cabinet_welcome_index_path
    elsif current_user.type == "Student"
      student_cabinet_welcome_index_path
    end
  end
end
