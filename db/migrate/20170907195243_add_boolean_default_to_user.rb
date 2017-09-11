class AddBooleanDefaultToUser < ActiveRecord::Migration[5.1]
  def change
    change_column :users, :superadmin_role, :boolean, default: false
    change_column :users, :supervisor_role, :boolean, default: false
    change_column :users, :user_role, :boolean, default: true
  end
end
