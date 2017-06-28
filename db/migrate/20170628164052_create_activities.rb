class CreateActivities < ActiveRecord::Migration[5.1]
  def change
    create_table :activities do |t|
      t.integer :reward_id
      t.string :name
      t.text :description
      t.integer :status
      t.string :task_one
      t.string :task_two
      t.string :task_three
      t.string :task_four
      t.string :task_five

      t.timestamps
    end
  end
end
