# frozen_string_literal: true

# OmniauthCallbacksController定義
class OmniauthCallbacksController < ApplicationController
  def line
    basic_action
  end

  private

  def basic_action
    @omniauth = request.env['omniauth.auth']
    if @omniauth.present?
      @profile = User.find_or_initialize_by(provider: @omniauth['provider'], uid: @omniauth['uid'])
      if @profile.email.blank?
        email = @omniauth['info']['email'] || "#{omniauth['uid']}-#{@omniauth['provider']}@example.com"
        @profile = current_user || User.create!(provider: @omniauth['provider'], uid: @omniauth['uid'],
                                                email: email, name: @omniauth['info']['name'], password: Devise.friendly_token[0, 20])
      end
      @profile.put_values(@omniauth)
      sign_in(:user, @profile)
    end
    flash[:notice] = 'ログインしました'
    redirect_to root_path
  end

  def fake_email(_uid, _provider)
    "#{auth.uid}-#{auth.provider}@example.com"
  end
end
