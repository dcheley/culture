class CreateTrackers < ActiveRecord::Migration[5.1]
  def change
    create_table :trackers do |t|
      t.integer :activity_id
      t.string :user_email
      t.string :contact
      t.integer :status
      t.integer :feedback_id

      t.timestamps
    end
  end
end
