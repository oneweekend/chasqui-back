class CreateSessions < ActiveRecord::Migration[5.2]
  def change
    create_table :sessions do |t|
      t.references :user, index: {:unique=>true}, foreign_key: true, null: false

      t.timestamps
    end
  end
end
