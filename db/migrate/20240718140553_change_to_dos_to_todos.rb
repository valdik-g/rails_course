class ChangeToDosToTodos < ActiveRecord::Migration[7.0]
  def change
    rename_table :to_dos, :todos
  end
end
