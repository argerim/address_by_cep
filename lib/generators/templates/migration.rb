class CreateTableAddresses < ActiveRecord::Migration
  def self.up
    create_table :addresses do |t|
      t.string :zip_code
      t.string :street
      t.string :number
      t.string :neighborhood
      t.string :city
      t.string :state
      t.string :complement
      t.references :addressable, :polymorphic => true
      
      t.timestamps
    end
  end

  def self.down
    drop_table :addresses
  end
end