class AddPriorityToCommentTable < ActiveRecord::Migration
  def change
    add_column :comments, :priorty, :integer, default: 0
  end
end
