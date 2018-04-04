class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  
  before_action :authenticate_user!
  
  # redirect to the form after the login
  
  def after_sign_in_path_for(resource)
     if resource.superadmin_role?
       rails_admin.dashboard_path
     else
       home_index_path 
     end
  end
end
