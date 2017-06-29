class AddPrizetoActivities < ActiveRecord::Migration[5.1]
  def change
    add_column :activities, :prize, :decimal, precision: 6, scale: 2

    change_column :rewards, :award, :decimal, precision: 6, scale: 2
  end
end
