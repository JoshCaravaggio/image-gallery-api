Rails.application.routes.draw do

  get 'gallery/:id', to: "gallery#get_gallery"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end