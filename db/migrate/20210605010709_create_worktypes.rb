class CreateWorktypes < ActiveRecord::Migration[6.1]
  def change
    create_table :worktypes do |t|
      t.string :type
      t.references :tasks, null: false, foreign_key: true

      t.timestamps
    end
  end
end
