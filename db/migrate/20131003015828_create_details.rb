class CreateDetails < ActiveRecord::Migration
  def change
    create_table :details do |t|
      t.string :title
      t.integer :property_id
      t.timestamps
    end
  end
end
