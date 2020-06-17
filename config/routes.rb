Rails.application.routes.draw do

  post 'authenticate', to: 'authentication#authenticate'
  get 'gallery', to: "gallery#get_gallery"
  get 'all_images', to: "gallery#get_all_images"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end