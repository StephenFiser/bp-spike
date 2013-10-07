class CreateProperties < ActiveRecord::Migration
  def change
    create_table :properties do |t|
      t.string :property_type
      t.string :title
      t.text :description
      t.string :bedrooms
      t.string :bathrooms
      t.string :square_feet
      t.string :price
      t.string :status
      t.text :details
      t.string :year_constructed
      t.integer :days_since_listed
      t.integer :user_id
      t.timestamps
    end
  end
end
