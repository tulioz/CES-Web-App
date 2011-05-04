class CreateOffers < ActiveRecord::Migration
  def self.up
    create_table :offers do |t|
      t.string :name
      t.text :description
      t.integer :location_id
      t.timestamps
    end
  end

  def self.down
    drop_table :offers
  end
end
