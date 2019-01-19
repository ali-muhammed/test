class ApplicationController < ActionController::Base
  def after_sign_in_path_for(current_user)
    if current_user.type == "Administrator"
      administrator_cabinet_welcome_index_path
    end
  end
end
