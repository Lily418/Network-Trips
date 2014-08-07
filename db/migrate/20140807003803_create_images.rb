class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.string :url
      t.belongs_to :place
      t.timestamps
    end
  end
end
