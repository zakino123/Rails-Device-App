# frozen_string_literal: true

# ApplicationController定義
class ApplicationController < ActionController::Base
  # 各アクションで権限をチェック。オプションでモデル依存をfalseに。
  authorize_resource :class => false

  rescue_from CanCan::AccessDenied do |exception|
    redirect_to(authorize_error_path)
  end

  # include Banken

  # rescue_from Banken::NotAuthorizedError, with: :user_not_authorized

  # private

  # def user_not_authorized
  #   redirect_to(authorize_error_path)
  # end
end
