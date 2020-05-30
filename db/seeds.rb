# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
=begin 
    Gallery.create(
:title => "Custom Neon Gallery",     
:description => "The Neon X custom neon gallery"
)
=end

File.open(Rails.root.join('db','images.txt'), "r") do |file_handle|
    counter = 0
    file_handle.each_line do |imageLine|    

        splitString = imageLine.split("\\\"")
        imageSource = splitString[1]
        imageName = imageSource.split("files/")[2].split(".")[0]
        
        Image.create(
            :source_url =>  imageSource, 
            :metadata => '', 
            :description => imageName, 
            :index => counter, 
            :gallery_id => 1)   
        puts "Image created with name: #{imageName} and source: #{imageSource}"

        counter = counter + 1
    end
end
