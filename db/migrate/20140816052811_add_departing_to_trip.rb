class AddDepartingToTrip < ActiveRecord::Migration
  def change
    add_column :trips, :departing, :string
  end
end
