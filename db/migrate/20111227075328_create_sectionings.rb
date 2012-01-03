class CreateSectionings < ActiveRecord::Migration
  def self.up
    create_table :sectionings do |t|
      t.integer :section_id
      t.integer :subsection_id
      t.timestamps
    end
  end
  
  def self.down
    drop_table :sectionings
  end
end
