class AddDueDateToTodo < ActiveRecord::Migration[7.0]
  def change
    add_column :todos, :due_date_enum, :integer, default: 0
  end
end
