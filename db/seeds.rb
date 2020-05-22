# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Image.create(source_url: 'https://cdn.shopify.com/s/files/1/0074/6396/0633/files/RestoreHyperWellness.jpeg?v=1588439720', description: 'Restore Hyperwellness Custom Sign', metadata: 'test metadata', :index => 1)
Image.create(:source_url => 'https://cdn.shopify.com/s/files/1/0074/6396/0633/files/corsair.jpeg?v=1588439718', :description => 'Corsair', :metadata => '', :index => 2)
Image.create(:source_url => 'https://cdn.shopify.com/s/files/1/0074/6396/0633/files/rredbeat.jpeg?v=1588439715', :description => 'rredbeat', :metadata => '', :index => 3)
Image.create(:source_url => 'https://cdn.shopify.com/s/files/1/0074/6396/0633/files/TailoredCoachingMethod.jpeg?v=1588439711', :description => 'Tailored coaching method',:metadata =>'', :index => 4)
