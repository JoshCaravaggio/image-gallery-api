class GalleryController < ApplicationController

    def get_gallery
        puts "What came in: #{params.to_json}"
        response = {"source" => "www.google.com"}
        render :json => response                
    end 
end


