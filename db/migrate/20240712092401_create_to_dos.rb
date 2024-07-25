class CreateToDos < ActiveRecord::Migration[7.0]
  def change
    create_table :to_dos do |t|
      t.string :task, null: false

      t.timestamps
    end
  end
end
