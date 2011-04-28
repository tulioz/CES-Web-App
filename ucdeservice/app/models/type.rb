class Type < ActiveRecord::Base
  has_many :locations
  
  validates :name, :presence => true,
                   :length => { :maximum => 50 }
end
