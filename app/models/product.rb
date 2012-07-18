class Product < ActiveRecord::Base
  
 has_many       :cart_items
 has_many       :elements
 belongs_to     :category
 
 validates_attachment_size :image, :less_than => 20.megabyte
 validates_attachment_content_type :image, :content_type => ['image/jpeg', 'image/jpg', 'image/png', 'image/gif']
  
 has_attached_file :image, :styles => { 
      :original => ["3000x3000>", :jpeg], 
      :medium => ["276x173#", :jpeg], 
      :thumb => ["166x105#", :jpeg]
 }
  
end
