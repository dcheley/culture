class CreateFeedbacks < ActiveRecord::Migration[5.1]
  def change
    create_table :feedbacks do |t|
      t.string :first_takeaway
      t.string :second_takeaway
      t.string :third_takeaway
      t.string :fourth_takeaway
      t.string :fifth_takeaway

      t.timestamps
    end
  end
end
