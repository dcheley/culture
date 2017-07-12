class RevertUserIdtoInt < ActiveRecord::Migration[5.1]
  def change
    change_column :activities, :user_id, 'integer USING CAST(user_id AS integer)'

    remove_column :activities, :feedback_id
    remove_column :activities, :due_date

    add_column :activities, :content_id, :integer
    add_column :trackers, :due_date, :datetime
  end
end
