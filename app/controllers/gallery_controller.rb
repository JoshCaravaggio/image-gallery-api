class GalleryController < ApplicationController

    def get_gallery
       
        if (params.key?("gallery") )#&& Image.find(params[:gallery]).exists?)            
            response = Image.where(:gallery_id =>params[:gallery])
            render :json => response      
        else
            response = {error => "Gallery with that id not found"}          
            render :json => response      
        end 
    end


    def get_all_images

        response = Image.take(50)
        render :json => response      

    end

end


    