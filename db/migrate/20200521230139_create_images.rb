class CreateImages < ActiveRecord::Migration[6.0]
  def change
    create_table :images do |t|
      t.text :source_url

      t.timestamps
    end
  end
end
