class ChangePoisToPoints < ActiveRecord::Migration[6.0]
  def change
    rename_table :pois, :points
  end
end
