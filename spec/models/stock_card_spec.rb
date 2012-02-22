require 'spec_helper'

describe StockCard do
  
  def should_not_have_blank(attribute)
    stock_card = StockCard.new
    stock_card.should be_invalid
    stock_card.should have_at_least(1).error_on(attribute)
  end
  
  describe "sku" do
    it "should not be blank" do
      should_not_have_blank(:sku)
    end
    
    it "should not allow duplicates?" do
      Factory(:stock_card, sku: "M60930")
      stock_card = Factory.build(:stock_card, sku: "M60930")
      stock_card.should be_invalid
      stock_card.should have_at_least(1).error_on(:sku)
    end
  end
  
  describe "name" do
    it "should not be blank" do
      should_not_have_blank(:name)
    end
    
    it "can have duplicates" do
      Factory(:stock_card, name: "foobar")
      stock_card = Factory.build(:stock_card, name: "foobar")
      stock_card.should be_valid
    end
  end
  
  describe "notes" do
    it "should not have more than x characters"
  end
  
  describe "should have" do
    it "many offers" do
      StockCard.new.should respond_to(:offers)
    end

    it "many assignments" do
      StockCard.new.should respond_to(:assignments)
    end

    it "many sections" do
      StockCard.new.should respond_to(:sections)
    end
  end
end