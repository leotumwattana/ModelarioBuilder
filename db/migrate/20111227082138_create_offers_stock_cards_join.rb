class CreateOffersStockCardsJoin < ActiveRecord::Migration
  def self.up
    create_table :offers_stock_cards, :id => false do |t|
      t.integer :offer_id
      t.integer :stock_card_id
      t.timestamps
    end
  end

  def self.down
    drop_table :offers_stock_cards
  end
end
