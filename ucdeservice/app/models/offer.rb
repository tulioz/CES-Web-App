class Offer < ActiveRecord::Base
  belongs_to :location
  
  validates :name, :presence => true,
                   :length => { :maximum => 50 }
end
