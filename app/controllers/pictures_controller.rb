class PicturesController < ApplicationController
  
  def get_pictures_original
     startpos = Picture.find(params[:picture_id]).position
     @temp1 = Picture.find(params[:picture_id]).product.pictures.find(:all, :conditions => ['position >= ?' , startpos], :order => 'position')
     @temp2 = Picture.find(params[:picture_id]).product.pictures.find(:all, :conditions => ['position < ?' , startpos], :order => 'position')
     @pictures = @temp1 + @temp2
     
     respond_to do |format|
        format.js
     end
  end

end