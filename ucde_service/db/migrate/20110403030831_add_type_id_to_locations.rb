class AddTypeIdToLocations < ActiveRecord::Migration
  def self.up
    add_column :locations, :type_id, :integer
  end

  def self.down
    remove_column :locations, :type_id
  end
end
