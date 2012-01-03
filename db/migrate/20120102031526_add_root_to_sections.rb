class AddRootToSections < ActiveRecord::Migration
  def self.up
    add_column :sections, :root, :boolean, :default => false
  end
  
  def self.down
    remove_column :sections, :root
  end
end
