class AddPageNameToTrip < ActiveRecord::Migration
  def change
    add_column :trips, :page_name, :string
    add_index :trips, :page_name, unique: true
  end
end
