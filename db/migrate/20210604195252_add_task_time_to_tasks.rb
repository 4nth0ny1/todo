class AddTaskTimeToTasks < ActiveRecord::Migration[6.1]
  def change
    add_column :tasks, :time_spent, :string
  end
end
