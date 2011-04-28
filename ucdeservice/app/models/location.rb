class Location < ActiveRecord::Base
  belongs_to :type
  belongs_to :event
  
  validates :name, :presence => true,
                   :length => { :maximum => 50 }
  validates :type_id, :presence => true
  validates :address, :presence => true,
                   :length => { :maximum => 50 }       
  validates :address_2, :presence => true,
                    :length => { :maximum => 50 }
  validates :category, :presence => true,
                   :length => { :maximum => 50 }       
  validates :phone, :presence => true,
                    :length => { :maximum => 11 }
  validates :latitude, :presence => true,
                   :length => { :maximum => 50 }       
  validates :longitude, :presence => true,
                    :length => { :maximum => 50 }                    
end
