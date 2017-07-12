class RemoveColumnsFromActivities < ActiveRecord::Migration[5.1]
  def change
    remove_column :activities, :status
    remove_column :activities, :contact
  end
end
