class AddSixthColumn < ActiveRecord::Migration[5.1]
  def change
    add_column :contents, :task_six, :string
    add_column :activities, :task_six, :string
    add_column :trackers, :question_six, :string
  end
end
