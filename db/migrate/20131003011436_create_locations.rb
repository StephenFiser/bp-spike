class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :street_address
      t.string :state
      t.string :city
      t.integer :zip_code
      t.integer :property_id
      t.timestamps
    end
  end
end
