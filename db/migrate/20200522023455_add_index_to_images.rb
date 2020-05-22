class AddIndexToImages < ActiveRecord::Migration[6.0]
  def change
    add_column :images, :index, :int
  end
end
