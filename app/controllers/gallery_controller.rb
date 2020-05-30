class GalleryController < ApplicationController


    def get_gallery
       
        response = {"images" => Image.all}  
        render :json => response                
        
    end 
end


