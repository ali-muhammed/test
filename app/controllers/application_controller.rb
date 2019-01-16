class ApplicationController < ActionController::Base
	devise_group :user, contains: [:admin, :student]

	def after_sign_in_path_for(current_user)
		if current_user.type == "Admin"
			admin_students_path
		end
	end
end
