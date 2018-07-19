class AddDescriptionToPois < ActiveRecord::Migration[5.1]
  def change
    add_column :pois, :description, :text
  end
end
