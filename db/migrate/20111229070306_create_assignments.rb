class CreateAssignments < ActiveRecord::Migration
  def self.up
    create_table :assignments do |t|
      t.integer :section_id
      t.integer :stock_card_id
      t.integer :position
      t.timestamps
    end
  end
  
  def self.down
    drop_table :assignments
  end
end
