class AddNameAndPositionToUsers < ActiveRecord::Migration
  def change
    add_column :users, :name, :string
    add_reference :users, :position, index: true, foreign_key: true
  end
end
