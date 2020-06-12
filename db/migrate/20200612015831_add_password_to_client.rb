class AddPasswordToClient < ActiveRecord::Migration[6.0]
  def change
    add_column :clients, :password, :string
    add_column :clients, :password_confirmation, :string
  end
end
