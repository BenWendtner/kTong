class Product < ActiveRecord::Base
  belongs_to     :category
  has_many       :cart_items,                         :dependent => :destroy
  has_many       :pictures, :order => 'position ASC', :dependent => :destroy
  has_many       :elements,                           :dependent => :destroy
end
