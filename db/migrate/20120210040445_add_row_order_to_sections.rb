class AddRowOrderToSections < ActiveRecord::Migration
  def self.up
    add_column :sections, :row_order, :integer
  end
  
  def self.down
    remove_column :sections, :row_order
  end
end
