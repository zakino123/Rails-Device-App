# frozen_string_literal: true

# AddColumnToUsers定義
class AddColumnToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :providers, :string
    add_column :users, :uid, :string
    add_column :users, :name, :string
  end
end
