class AddTagLineToTrip < ActiveRecord::Migration
  def change
    add_column :trips, :tagline, :string
  end
end
