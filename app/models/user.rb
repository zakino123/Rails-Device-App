# frozen_string_literal: true

# Userモデル定義
class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :trackable, :confirmable, :lockable, :timeoutable,
         :omniauthable, omniauth_providers: %i[line]

  def social_profile(provider)
    social_profiles.select { |sp| sp.provider == provider.to_s }.first
  end

  def put_values(omniauth)
    return if provider.to_s != omniauth['provider'].to_s || uid != omniauth['uid']

    # put_valuesメソッド以下の内容は現状使用していない為、コメントアウト
    # credentials = omniauth['credentials']
    # info = omniauth['info']

    # access_token = credentials['refresh_token']
    # access_secret = credentials['secret']
    # credentials = credentials.to_json
    # name = info['name']
    # self.put_values_by_raw_info(omniauth['extra']['raw_info'])
  end

  def put_values_by_raw_info(raw_info)
    self.raw_info = raw_info.to_json
    save!
  end
end
