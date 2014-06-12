class AddFkToMenus < ActiveRecord::Migration
  def change
    add_column :menus, :user_id, :integer
  end
end
