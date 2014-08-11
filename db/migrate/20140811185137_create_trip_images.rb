class CreateTripImages < ActiveRecord::Migration
  def change
    create_table :trip_images do |t|
      t.string :url
      t.belongs_to :trip
      t.timestamps
    end
  end
end
