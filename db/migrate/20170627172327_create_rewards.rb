class CreateRewards < ActiveRecord::Migration[5.1]
  def change
    create_table :rewards do |t|
      t.integer :progress
      t.string :name
      t.float :award
      t.integer :user_id
      t.integer :activity_id

      t.timestamps
    end
  end
end
