class ApplicationController < ActionController::Base
  delegate :current_user, :user_signed_in?, to: :user_session
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def user_session
	UserSession.new(session)
  end
end
