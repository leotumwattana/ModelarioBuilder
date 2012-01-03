class CreateSectionsStockCardsJoin < ActiveRecord::Migration
  def self.up
    create_table :sections_stock_cards, :id => false do |t|
      t.integer :section_id
      t.integer :stock_card_id
      t.timestamps
    end
  end

  def self.down
    drop_table :sections_stock_cards
  end
end
