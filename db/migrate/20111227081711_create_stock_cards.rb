class CreateStockCards < ActiveRecord::Migration
  def self.up
    create_table :stock_cards do |t|
      t.string :sku
      t.string :name
      t.string :photo
      t.string :note1
      t.string :note2
      t.string :note3
      t.timestamps
    end
  end
  
  def self.down
    drop_table :stock_cards
  end
end
