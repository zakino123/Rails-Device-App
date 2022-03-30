# frozen_string_literal: true

# UsersLoyalty定義
class UsersLoyalty < ApplicationLoyalty
  def update?
    user.admin?
  end
  def show?
    user.admin?
  end

end
