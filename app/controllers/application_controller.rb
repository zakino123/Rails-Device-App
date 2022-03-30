# frozen_string_literal: true

# ApplicationController定義
class ApplicationController < ActionController::Base
  include Banken

  rescue_from Banken::NotAuthorizedError, with: :user_not_authorized

  private

  def user_not_authorized
    redirect_to(authorize_error_path)
  end
end
