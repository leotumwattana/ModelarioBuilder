class AddWatchBooleanToStockCards < ActiveRecord::Migration
  def self.up
    add_column :stock_cards, :watch, :boolean
  end
  
  def self.down
    remove_column :stock_cards, :watch
  end
end
