class CreateModelarios < ActiveRecord::Migration
  def self.up
    create_table :modelarios do |t|
      t.string :title
      t.timestamps
    end
  end
  
  def self.down
    drop_table :modelarios
  end
end
