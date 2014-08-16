class AddIndexToLiketogos < ActiveRecord::Migration
  def change
      add_index :liketogos, [:user_id, :place_id], unique: true
  end
end
