class Offer < ActiveRecord::Base
  has_and_belongs_to_many :stock_cards, :uniq => true
end
