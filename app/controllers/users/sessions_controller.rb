# frozen_string_literal: true

class Users::SessionsController < Devise::SessionsController
  before_action :configure_sign_in_params, only: [:create]

  # GET /resource/sign_in
  def new
    super

    puts '========================='
    puts 'GET /resource/sign_in'
    puts '========================='
  end

  # POST /resource/sign_in
  def create
    super
  end

  # GET /resource/sign_out
  def destroy
    super
  end

  protected

  # 許可するための追加のパラメータがあれば、sanitizerに追加して下さい
  def configure_sign_in_params
    devise_parameter_sanitizer.permit(:sign_in, keys: [:attribute])
  end
end
