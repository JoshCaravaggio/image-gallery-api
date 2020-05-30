class AddDescriptionAndTitleToGallery < ActiveRecord::Migration[6.0]
  def self.up
    add_column :galleries, :description, :text
    add_column :galleries, :title, :string
  
  end

  def self.down
    remove_column  :gallery, :description
    remove_column  :gallery, :title
  end
end
