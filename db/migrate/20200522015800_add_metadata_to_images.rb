class AddMetadataToImages < ActiveRecord::Migration[6.0]
  def change
    add_column :images, :metadata, :string
  end
end
