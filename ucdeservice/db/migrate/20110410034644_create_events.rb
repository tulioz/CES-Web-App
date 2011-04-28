class CreateEvents < ActiveRecord::Migration
  def self.up
    create_table :events do |t|
      t.string :name
      t.integer :location_id
      t.text :description
      t.string :website
      t.datetime :date
      t.timestamps
    end
  end

  def self.down
    drop_table :events
  end
end
