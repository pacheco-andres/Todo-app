class CreateTasks < ActiveRecord::Migration[6.0]
  def change
    create_table :tasks do |t|
      t.text :description
      t.boolean :completed
      
      t.timestamps
    end

    add_reference :tasks, :todo_list, foreign_key: true
  end
end
