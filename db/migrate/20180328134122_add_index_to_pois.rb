class AddIndexToPois < ActiveRecord::Migration[5.1]
  def change
    add_index :pois, :name, unique: true
  end
end
