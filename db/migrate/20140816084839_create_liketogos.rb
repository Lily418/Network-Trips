class CreateLiketogos < ActiveRecord::Migration
  def change
    create_table :liketogos do |t|
      t.belongs_to :user
      t.belongs_to :place
      t.timestamps
    end
  end
end
