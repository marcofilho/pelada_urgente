class CreateMatches < ActiveRecord::Migration
  def change
    create_table :matches do |t|
      t.timestamp :start
      t.timestamp :end
      t.integer :max_players
      t.string :visibility
      t.references :place, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
