class AddAdditionsToApiKeys < ActiveRecord::Migration
  def self.up
    add_column :api_keys, :name, :string
    add_column :api_keys, :description, :text
  end

  def self.down
    remove_column :api_keys, :name
    remove_column :api_keys, :description
  end
end
