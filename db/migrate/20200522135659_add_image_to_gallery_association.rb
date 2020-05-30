class AddImageToGalleryAssociation < ActiveRecord::Migration[6.0]
  def self.up
    add_column :images, :gallery_id, :integer
    add_index 'images', ['gallery_id'], :name => 'index_gallery_id'
  
  end

  def self.down
    remove_column  :images, :gallery_id
  end

end
