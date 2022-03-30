# frozen_string_literal: true

module Users
  # SessionsController定義
  class SessionsController < Devise::SessionsController
    before_action :configure_sign_in_params, only: [:create]

    # GET /resource/sign_in
    def new
      super

      puts '========================='
      puts 'GET /resource/sign_in'
      puts '========================='
    end

    # POST /resource/sign_in

    # GET /resource/sign_out

    protected

    # 許可するための追加のパラメータがあれば、sanitizerに追加して下さい
    def configure_sign_in_params
      devise_parameter_sanitizer.permit(:sign_in, keys: [:attribute])
    end
  end
end
