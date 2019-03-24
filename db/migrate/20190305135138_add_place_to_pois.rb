class AddPlaceToPois < ActiveRecord::Migration[5.2]
  def change
    add_reference :pois, :place, foreign_key: true
  end
end
