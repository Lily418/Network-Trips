class CreateCommentsTable < ActiveRecord::Migration
  def change
    create_table :comments do |t|
        t.belongs_to :user
        t.belongs_to :trip
        t.string :comment
        t.timestamps
    end
  end
end
