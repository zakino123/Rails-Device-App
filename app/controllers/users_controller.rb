# frozen_string_literal: true

# UsersController定義
class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    # authorize!
  end

  def authorize_error; end
end
