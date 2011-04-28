class AddAdditionsToEvents < ActiveRecord::Migration
  def self.up
    add_column :events, :location_id, :integer
    add_column :events, :description, :text
    add_column :events, :website, :string
    add_column :events, :date, :datetime
  end

  def self.down
    remove_column :events, :location_id
    remove_column :events, :description
    remove_column :events, :website
    remove_column :events, :date
  end
end
