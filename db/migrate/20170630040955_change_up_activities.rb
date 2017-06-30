class ChangeUpActivities < ActiveRecord::Migration[5.1]
  def change
    add_column :activities, :contact, :string

    change_column :activities, :reward_id, :string
  end
end
