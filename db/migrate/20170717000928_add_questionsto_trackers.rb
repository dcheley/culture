class AddQuestionstoTrackers < ActiveRecord::Migration[5.1]
  def change
    add_column :trackers, :question_one, :string
    add_column :trackers, :question_two, :string
    add_column :trackers, :question_three, :string
    add_column :trackers, :question_four, :string
    add_column :trackers, :question_five, :string
  end
end
