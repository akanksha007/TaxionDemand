class CreateCabs < ActiveRecord::Migration
  def change
    create_table :cabs do |t|
      t.string :number
      t.float :latitude
      t.float :longitude
      t.string :color
      t.timestamps null: false
    end
  end
end
