class Assignment < ActiveRecord::Base
  belongs_to :stock_card
  belongs_to :section
  acts_as_list
  include RankedModel
  ranks :row_order, :with_same => :section_id
  
  def stock_card_sku
    stock_card.try(:sku)
  end
  
  def stock_card_sku=(sku)
    self.stock_card = StockCard.find_by_sku(sku) if sku.present?
  end
end
