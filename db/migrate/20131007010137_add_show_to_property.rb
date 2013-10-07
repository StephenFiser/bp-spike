class AddShowToProperty < ActiveRecord::Migration
  def change
  	add_column :properties, :show, :boolean, default: false
  	add_column :properties, :ml, :string, default: "More"
  end
end
