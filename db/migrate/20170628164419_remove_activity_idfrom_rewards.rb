class RemoveActivityIdfromRewards < ActiveRecord::Migration[5.1]
  def change
    remove_column :rewards, :activity_id
  end
end
