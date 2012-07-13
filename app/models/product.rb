class Product < ActiveRecord::Base
  
 has_many       :cart_items
 has_many       :elements
 belongs_to     :category
 
end
