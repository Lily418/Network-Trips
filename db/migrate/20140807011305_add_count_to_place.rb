class AddCountToPlace < ActiveRecord::Migration
  def change
    add_column :places, :count, :integer, default: 0
  end
end
