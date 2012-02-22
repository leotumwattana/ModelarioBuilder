require 'spec_helper'

describe Offer do
  
  describe "name" do
    it "should not be blank" do
      offer = Offer.new
      offer.should be_invalid
      offer.should have_at_least(1).error_on(:name)
    end
    
    it "should not allow duplicates" do
      Factory(:offer, name: "W1")
      offer = Factory.build(:offer, name: "W1")
      offer.should be_invalid
      offer.should have_at_least(1).error_on(:name)
    end
  end
  
end