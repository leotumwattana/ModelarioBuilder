class CreateOffers < ActiveRecord::Migration
  def self.up
    create_table :offers do |t|
      t.string :name
      t.timestamps
    end
  end
  
  def self.down
    drop_table :offers
  end
end
