class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :type, null: false
      t.string :email, null: false, default: 'luis@chasqui.com'
      t.string :name, null: false, default: 'Luis Felipe Sanchez'
      t.integer :phone, null: false, default: '999666333'
      t.string :activity_status, null: false, default: 'active'
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
    add_index :users, :email, unique: true
  end
end
