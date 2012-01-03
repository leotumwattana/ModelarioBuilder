class AddColorThemeIdToModelarios < ActiveRecord::Migration
  def self.up
    add_column :modelarios, :color_theme_id, :integer
  end
  
  def self.down
    remove_column :modelarios, :color_theme_id
  end
end
