class ApplicationController < ActionController::Base
	respond_to :html, :xml, :json
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  # @user = Contact.where("email = '#{current_user.email}'")
end
