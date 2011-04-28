class AddAdditionsToLocations < ActiveRecord::Migration
  def self.up
    add_column :locations, :address, :string
    add_column :locations, :category, :string
    add_column :locations, :address_2, :string
    add_column :locations, :phone, :string
    add_column :locations, :latitude, :string
    add_column :locations, :longitude, :string
    add_column :locations, :description, :text
  end

  def self.down
    remove_column :locations, :address
    remove_column :locations, :address_2
    remove_column :locations, :category
    remove_column :locations, :imageURL
    remove_column :locations, :phone
    remove_column :locations, :latitude
    remove_column :locations, :longitude
    remove_column :locations, :description
  end
end
