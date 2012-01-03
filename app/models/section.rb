class Section < ActiveRecord::Base
  attr_accessible :sku, :sku_tokens, :root, :title
  belongs_to :modelario
  has_many :sectionings
  has_many :subsections, :through => :sectionings
  
  has_many :assignments
  has_many :stock_cards, :through => :assignments
  attr_reader :sku_tokens
  
  def sku_tokens=(ids)
    self.stock_card_ids = ids.split(",")
  end
end
