class Picture < ActiveRecord::Base
  
   belongs_to :product
   
   validates_attachment_size :image, :less_than => 20.megabyte
   validates_attachment_content_type :image, :content_type => ['image/jpeg', 'image/jpg', 'image/png', 'image/gif'] 
  
   has_attached_file :image, :styles => { 
      :original => ["3000x3000>", :jpeg], 
      :medium => ["276x173>", :jpeg], 
      :thumb => ["64x64>", :jpeg]
   }
  
end
