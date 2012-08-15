class Address < ActiveRecord::Base
   
  belongs_to :user
   
  validates :firstname, :lastname, :address, :location, :length => {:minimum => 1, :maximum => 100}
  validates :postalcode, :numericality => { :only_integer => true}, :length => { :minimum => 4, :maximum => 5}
  validates :country, :length => {:is => 2}
  
end
