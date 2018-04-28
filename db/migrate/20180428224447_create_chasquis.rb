class CreateChasquis < ActiveRecord::Migration[5.2]
  def change
    create_table :chasquis do |t|
      t.string :email
      t.string :name
      t.integer :phone

      t.timestamps
    end
    add_index :chasquis, :email, unique: true
  end
end
