# frozen_string_literal: true

module Users
  # UnlocksController定義
  class UnlocksController < Devise::UnlocksController
    # GET /resource/unlock/new

    # POST /resource/unlock

    # GET /resource/unlock?unlock_token=abcdef

    # パスワードのロック解除指示を送信した後に使用する path

    # リソースのロックを解除した後に使用する path
  end
end
