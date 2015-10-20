class CreateArenas < ActiveRecord::Migration
  def change
    create_table :place_arenas do |t|
      t.string :name
      t.float :width
      t.float :length
      t.string :kind
      t.references :place, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
