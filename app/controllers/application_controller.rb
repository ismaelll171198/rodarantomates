class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  protect_from_forgery with: :exception
end
def after_sign_in_path_for(resource)
	settings_path
end
	
