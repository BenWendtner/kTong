class Product < ActiveRecord::Base
  
 has_many       :cart_items,                         :dependent => :destroy
 has_many       :pictures, :order => 'position ASC', :dependent => :destroy
 has_many       :elements,                           :dependent => :destroy
 belongs_to     :category

end
