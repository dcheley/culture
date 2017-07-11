class AddDueDatetoActivities < ActiveRecord::Migration[5.1]
  def change
    add_column :activities, :due_date, :datetime
  end
end
