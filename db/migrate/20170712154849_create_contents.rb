class CreateContents < ActiveRecord::Migration[5.1]
  def change
    create_table :contents do |t|
      t.string :name
      t.string :task_one
      t.string :task_two
      t.string :task_three
      t.string :task_four
      t.string :task_five
      t.decimal :prize, precision: 6, scale: 2
      t.text :description

      t.timestamps
    end
  end
end
