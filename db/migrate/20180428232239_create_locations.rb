class CreateLocations < ActiveRecord::Migration[5.2]
  def change
    create_table :locations do |t|
      t.float :latitude
      t.float :longitude
      t.string :address
      t.references :chasqui, foreign_key: true

      t.timestamps
    end
  end
end
