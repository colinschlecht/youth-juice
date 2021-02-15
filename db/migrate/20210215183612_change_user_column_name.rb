class ChangeUserColumnName < ActiveRecord::Migration[6.1]
  def change
    rename_loumn :users, :password, :password_digest
  end
end
