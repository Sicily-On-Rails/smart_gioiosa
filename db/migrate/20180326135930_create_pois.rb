class CreatePois < ActiveRecord::Migration[5.1]
  def change
    create_table :pois do |t|
      t.string :name
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
