class Picture < ActiveRecord::Base
  
   belongs_to       :product
   
   
   
   has_attached_file :image, :styles => { 
      :original => ["3000x3000>", :jpeg], 
      :medium => ["276x173#", :jpeg], 
      :thumb => ["64x64#", :jpeg]
   }
  
end
