class AddHotfoodToMenu < ActiveRecord::Migration
  def change
    add_column :menus, :hotfood, :string
  end
end
