class CreateRequests < ActiveRecord::Migration[5.2]
  def change
    create_table :requests do |t|
      t.float :latitude
      t.float :longitude
      t.references :user, foreign_key: true, null: false

      t.timestamps
    end
  end
end
