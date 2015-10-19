class AddPlaceToAddresses < ActiveRecord::Migration
  def change
    add_reference :addresses, :place, index: true, foreign_key: true
  end
end
