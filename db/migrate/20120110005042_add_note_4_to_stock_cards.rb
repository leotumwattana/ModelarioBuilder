class AddNote4ToStockCards < ActiveRecord::Migration
  def self.up
    add_column :stock_cards, :note4, :string
  end
  
  def self.down
    remove_column :stock_cards, :note4
  end
end
