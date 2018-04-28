class CreateChasquis < ActiveRecord::Migration[5.2]
  def change
    create_table :chasquis do |t|
      t.string :email, null: false, default: 'luis@chasqui.com'
      t.string :name, null: false, default: 'Luis Felipe Sanchez'
      t.integer :phone, null: false, default: '999666333'

      t.timestamps
    end
    add_index :chasquis, :email, unique: true
  end
end
