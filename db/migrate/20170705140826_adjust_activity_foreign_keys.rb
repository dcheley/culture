class AdjustActivityForeignKeys < ActiveRecord::Migration[5.1]
  def change
    add_column :activities, :user_id, :string
    add_column :activities, :feedback_id, :integer

    remove_column :activities, :reward_id
  end
end
