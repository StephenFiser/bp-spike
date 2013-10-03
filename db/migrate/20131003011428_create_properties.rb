class CreateProperties < ActiveRecord::Migration
  def change
    create_table :properties do |t|
      t.string :property_type
      t.string :title
      t.text :description
      t.integer :price
      t.integer :user_id
      t.timestamps
    end
  end
end
