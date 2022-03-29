class ApplicationController < ActionController::Base
  include Banken

  rescue_from Banken::NotAuthorizedError, with: :user_not_authorized

  private

  def user_not_authorized
    flash[:alert] = "You are not authorized to perform this action."
    redirect_to(request.referrer || authorize_error_path)
  end
end
