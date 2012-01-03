class AddModelarioIdToSections < ActiveRecord::Migration
  def self.up
    add_column :sections, :modelario_id, :integer
  end
  
  def self.down
    remove_column :sections, :modelario_id
  end
end
