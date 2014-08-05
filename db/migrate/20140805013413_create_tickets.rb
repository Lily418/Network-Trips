class CreateTickets < ActiveRecord::Migration
  def change
    create_table :tickets do |t|
      t.integer :for
      t.belongs_to :user
      t.belongs_to :trip
      t.timestamps
    end
  end
end
