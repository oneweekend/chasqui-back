class AddKindToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :kind, :integer, default: 1
  end
end
