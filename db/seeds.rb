
Gallery.delete_all
Image.delete_all
Client.delete_all

ogGallery = Gallery.create(
:title => "Custom Neon Gallery",     
:description => "The Neon X custom neon gallery"
)

Client.create(:client_key => '0665151314', :password => '0665151314', :password_confirmation => '0665151314')

image_file = File.open(Rails.root.join('db','images.txt'), "r") 
counter = 0
image_file.each_line do |imageLine|    

    splitString = imageLine.split("\\\"")
    imageSource = splitString[1]
    imageName = imageSource.split("files/")[2].split(".")[0]
    
    Image.create(
        :source_url =>  imageSource, 
        :metadata => '', 
        :description => imageName, 
        :index => counter, 
        :gallery_id => ogGallery.id)   
        
    puts "Image created with name: #{imageName} and source: #{imageSource}"
    counter = counter + 1

end
image_file.close