class AddBookingInfoTextToTrip < ActiveRecord::Migration
  def change
    add_column :trips, :booking_info, :string
  end
end
