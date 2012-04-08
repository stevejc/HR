class RemoveNouseFromMyvendors < ActiveRecord::Migration
  def up
    remove_column :myvendors, :nouse
  end

  def down
    add_column :myvendors, :nouse, :boolean
  end
end
