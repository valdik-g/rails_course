class AddDoneToTodo < ActiveRecord::Migration[7.0]
  def change
    add_column :todos, :done, :boolean, default: false
  end
end
