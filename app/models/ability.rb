# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(user)
    # ログイン/アウトはみんな許可
    can :manage, [:session, :registration]

    user ||= User.new
    if user.admin?
      can :manage, :all
    else
      can :read, :all
    end
  end
end
