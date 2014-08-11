class AddHighlightTextToTrip < ActiveRecord::Migration
  def change
    add_column :trips, :highlight_text, :string
  end
end
