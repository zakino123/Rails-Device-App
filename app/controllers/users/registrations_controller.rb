# frozen_string_literal: true

module Users
  # RegistrationsController定義
  class RegistrationsController < Devise::RegistrationsController
    before_action :configure_sign_up_params, only: [:create]
    before_action :configure_account_update_params, only: [:update]

    # GET /resource/sign_up
    def new
      super

      puts '=========================='
      puts 'GET /resources/sign_up'
      puts '=========================='
    end

    # POST /resource

    # GET /resource/edit
    def edit
      super
      # authorize!

      puts '=========================='
      puts 'GET /resources/edit'
      puts '=========================='
    end

    # PUT /resource

    # DELETE /resource

    # GET /resource/cancel
    # 通常はサインイン後に
    # 期限切れになるセッションデータを強制的に今すぐ期限切れにします。
    # これは、ユーザーが全てのOAuthセッションデータを削除して、
    # 途中でoauthサインイン/アップをキャンセルしたい場合に便利です。

    protected

    # 許可するためのユイカのパラメータがある場合は、sanitizerに追加して下さい
    def configure_sign_up_params
      devise_parameter_sanitizer.permit(:sign_up, keys: [:attribute])
    end

    # 許可するための追加のパラメータがある場合は、sanitizerに追加して下さい
    def configure_account_update_params
      devise_parameter_sanitizer.permit(:account_update, keys: [:attribute])
    end

    # サインアップ後に使用する path

    # アクティブでないアカウントのサインアップ後に使用する path
  end
end
