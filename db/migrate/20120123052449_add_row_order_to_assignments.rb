class AddRowOrderToAssignments < ActiveRecord::Migration
  def self.up
    add_column :assignments, :row_order, :integer
  end
  def self.down
    remove_column :assignments, :row_order
  end
end
